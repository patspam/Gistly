use Tatsumaki::Application;
use ResultHandler;
use MainHandler;

Tatsumaki::Application->new(
    [
        '/summary' => 'ResultHandler',
        '/'        => 'MainHandler',
    ]
);
