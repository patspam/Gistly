package MainHandler;
use parent qw(Tatsumaki::Handler);

sub get {
    my $self = shift;
    $self->write(<<END_HTML);
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>Gistly</title>
  </head>
  <body>
    <form method=POST action=/summary>
    <p><label for=topic>Topic:</label> <input type=text name=topic id=topic></p>
    <p><label for=limit>Sentences:</label> <input type=text name=limit id=limit value=3></p>
    <p><label for=background_limit>Background Pages</label><input type=text name=background_limit id=background_limit value=16></p>
    <p><label for=content>Content:</label></p>
    <textarea rows=10 cols=10 name=content id=content></textarea>
    <p><input type=submit></p>
    </form>
  </body>
</html>
END_HTML
}

1;