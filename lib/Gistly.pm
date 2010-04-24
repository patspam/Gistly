package Gistly;

use strict;
use warnings;
use Lingua::EN::Splitter qw(words);
use Lingua::EN::Sentence qw(get_sentences);
use File::Slurp;
use Lingua::Stem::En;
use Lingua::EN::StopWords qw(%StopWords);
use List::Util qw(sum);
use HTML::Strip;

sub summarise {
    my %opts = @_;
    my $limit = $opts{limit} || 5;
    
    die 'Missing background docs' unless $opts{background};
    my %docs = %{$opts{background}};
    
    my $content = $opts{content} or die 'Missing content doc';
    $docs{DOC} = $content;

    # Build up background and document-specific frequency histograms
    my $hs = HTML::Strip->new();
    for my $doc ( keys %docs ) {
        my $content = $hs->parse( $docs{$doc} );
        $hs->eof;
        $docs{$doc} = get_sentences($content);
    }

    my %base;
    my %per_doc;

    for my $doc ( keys %docs ) {
        my @sentences = @{ $docs{$doc} };
        for my $sentence (@sentences) {
            my @words = grep { !$StopWords{$_} } @{ words( lc $sentence ) };
            for
              my $word ( @{ Lingua::Stem::En::stem( { -words => \@words } ) } )
            {
                $base{$word}++;
                $per_doc{$doc}{$word}++;    # we actually only use $per_doc{DOC}
            }
        }
    }

  # Convert histograms into frequency tables by dividing the count for each word
  # by the total number of hits in the hash..

    my $sum = sum values %base;
    $base{$_} /= $sum for keys %base;

    for my $doc ( keys %per_doc ) {
        $sum = sum values %{ $per_doc{$doc} };
        $per_doc{$doc}{$_} /= $sum for keys %{ $per_doc{$doc} };
    }

   # Now that we have our frequencies of words relative to the corpus as a whole
   # and relative to individual documents, we can start our second pass.

    # Look over DOC and score each sentence in terms of the average relative
    # unusualness of its constituent words
    {
        my @sentences = @{ $docs{DOC} };
        my %markings;
        my $order = 0;
        for my $sentence (@sentences) {
            my @words = grep { !$StopWords{$_} } @{ words( lc $sentence ) };

       # Mark the sentence with its order in the document and a score for each
       # word; that is the ratio between the expected frequency and the observed
       # frequency
            $markings{$sentence}->{order} = $order++;
            if ( !@words ) {
                $markings{$sentence}->{score} = 0;
                next;
            }
            for
              my $word ( @{ Lingua::Stem::En::stem( { -words => \@words } ) } )
            {
                my $score = $per_doc{DOC}{$word} / $base{$word};
                $markings{$sentence}->{score} += $score;
            }

       # Finally, divide the sentence's score by the number of words to find the
       # average and so that we're not unfairly favouring longer sentences
            $markings{$sentence}->{score} /= @words;
        }

   # Now we havea score for each sentence in the document. Sort by score to find
   # the 10 highest scoring, then re-sort by order so that they appear in the
   # original order.

        my @sorted =
          sort { $markings{$b}->{score} <=> $markings{$a}->{score} }
          keys %markings;
        my @selected =
          sort { $markings{$b}->{order} <=> $markings{$a}->{order} }
          @sorted[ 0 .. $limit - 1 ];

        if (wantarray) {
            return @selected;
        } else {
            return join "\n", @selected;
        }
    }
}

1;