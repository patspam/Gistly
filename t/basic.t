use Test::More tests => 1;

use FindBin;
use lib "$FindBin::Bin/../lib";
use Gistly;

my $summary = Gistly::summarise(
    background => {
        'http://plackperl.org'        => 'blah. blah. yo.',
        'http://patspam.com/blogpost' => 'and then some. blah.',
    },
    content => 'This is. The special one. That goes. Blah',
    limit   => 3
);

like( $summary, qr/blah/i, 'Summary has blah in it' );
