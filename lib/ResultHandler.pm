package ResultHandler;
use parent qw(Tatsumaki::Handler);
__PACKAGE__->asynchronous(1);

use strict;
use warnings;
use Tatsumaki::HTTPClient;
use Tatsumaki::Error;
use JSON;
use URI::Escape;
use lib '/projects/Gistly/lib';
use Gistly;

my $TIMEOUT = 5;

sub get {
    my $self = shift;
    $self->response->redirect('/');
    $self->finish;
}

sub post {
    my ($self) = @_;
    my $params = $self->request->parameters;
    my ( $topic, $content, $limit, $background_limit ) =
      ( $params->{topic}, $params->{content}, $params->{limit} || 3, $params->{background_limit} || 8 );

    if ( !$topic ) {
        $self->stream_write('Topic is required');
        $self->finish;
    }

    if ( !$content ) {
        $self->stream_write('Content is required');
        $self->finish;
    }

    $self->stream_write( '*' x 150 );
    $self->stream_write(qq{<p>Researching Topic: "$topic"..<ol>});

    $topic = uri_escape($topic);
    my $client = Tatsumaki::HTTPClient->new( timeout => $TIMEOUT );
    $client->get(
"http://ajax.googleapis.com/ajax/services/search/web?v=1.0&hl=en&rsz=large&q=$topic",
        $self->async_cb(
            sub {
                $self->on_google_response(
                    @_,
                    {
                        topic   => $topic,
                        content => $content,
                        limit   => $limit,
                        background_limit => $background_limit,
                        results => [],
                        start   => 0,
                    }
                );
            }
        )
    );
}

sub on_google_response {
    my ( $self, $res, $cfg ) = @_;
    if ( $res->is_error ) {
        $self->stream_write(qq{<p>Google response error</p>});
        Tatsumaki::Error::HTTP->throw(500);
    }
    my $json = JSON::decode_json( $res->content );
    my $data = $json->{responseData};
    if ( !$data ) {
        $self->stream_write(qq{<p>Google API error</p>});
        $self->log( $res->content );
        $self->finish;
        Tatsumaki::Error::HTTP->throw(500);
    }
    my @results = ( @{ $cfg->{results} }, @{ $data->{results} } );
    $cfg->{results} = \@results;

    $cfg->{start} += 8;
    if ( $cfg->{start} < $cfg->{background_limit} ) {
        
        my $topic = $cfg->{topic};
        my $client = Tatsumaki::HTTPClient->new( timeout => $TIMEOUT );
        $client->get(
"http://ajax.googleapis.com/ajax/services/search/web?v=1.0&hl=en&rsz=large&start=$cfg->{start}&q=$topic",
            $self->async_cb(
                sub {
                    $self->on_google_response( @_, $cfg );
                }
            )
        );
    }
    else {

        my $first = shift @results;
        $first = shift @results while @results && $first->{url} =~ m{\.pdf$};
        if ( !$first ) {
            $self->stream_write(qq{<p>No suitable results from Google</p>});
            $self->finish;
            Tatsumaki::Error::HTTP->throw(500);
        }
        my $first_url = $first->{url};
        $self->stream_write(qq{<li>Learning from: $first_url</li>});
        $cfg->{results} = \@results;
        my $client = Tatsumaki::HTTPClient->new( timeout => $TIMEOUT );
        $client->get( $first_url,
            $self->async_cb( sub { $self->on_slurp_url( @_, $cfg ) } ) );
    }
}

sub on_slurp_url {
    my ( $self, $res, $cfg ) = @_;
    if ( $res->is_error ) {
        $self->stream_write(qq{<p>Response error (skipping)</p>});
    }
    elsif ( $res->header( 'Content-Type' ) !~ m{^text} ) {
        $self->stream_write(qq{<p>Non-text content type (skipping)</p>});
    }
    else {
        my $url = $res->header('url');
        $cfg->{background}{$url} = $res->content;
    }

    my $next = shift @{ $cfg->{results} };
    $next = shift @{ $cfg->{results} } while @{ $cfg->{results} } && $next->{url} =~ m{\.pdf$};
    if ($next) {
        my $next_url = $next->{url};
        $self->stream_write(qq{<li>Learning from: $next_url</li>});
        my $client = Tatsumaki::HTTPClient->new;
        $client->get( $next_url,
            $self->async_cb( sub { $self->on_slurp_url( @_, $cfg ) } ) );
    }
    else {
        $self->stream_write(qq{</ol>Finished researching. Now analysing..</p>});
        my $summary = Gistly::summarise(
            limit      => $cfg->{limit},
            background => $cfg->{background},
            content    => $cfg->{content}
        );
        $self->stream_write(qq{<h2>Gist</h2><p>$summary</p>});
        $self->finish;
    }
}

1;
