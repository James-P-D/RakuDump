say "\nHELLO WORLD EXAMPLES\n";

# This is a single line comment

say #`(This is an embedded comment) "Hello World.";

=begin comment
This is a multi line comment.
This is a multi line comment.
=end comment

# Output to stdout with say
say 'hello world';
'hello world'.say;

# We can use single or double-quotes
say "what's up?";
say 'hello "james"';

# BUT! interpolated variables only work with double-quotes!
my $name = 'John Doe';
say 'Hello $name';   # This doesn't work!
say "Hello $name";   # This does!