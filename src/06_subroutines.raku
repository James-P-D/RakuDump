say "\nSUBROUTINES\n";

# We can create subroutines with sub
sub say-hello {
  say "Hello eveyone!";
}

say-hello;

# We can pass parameters
sub add-numbers($a, $b) {
  my $total = $a + $b;
  say $total;
}

add-numbers(5, 10);

# We can pass parameters and specify types
sub add-integers(Int $a, Int $b) {
  my Int $total = $a + $b;
  say $total;
}

add-integers(5, 10);

# We can use an explicit return

sub add-integers-and-return(Int $a, Int $b) {
  my Int $total = $a + $b;
  return $total;
}

say add-integers-and-return(5, 10);

# We can do function-overloading with multiple dispatch
multi greet($name) {
    say "Good morning $name";
}
multi greet($name, $title) {
    say "Good morning $title $name";
}
greet "Johnnie";
greet "Laura","Mrs.";

# We can specify optional parameters using '?'
sub say-hello-again($name?) {
  with $name { say "Hello " ~ $name }
  else { say "Hello Human" }
}
say-hello-again;
say-hello-again("Laura");

# We can specify return types
sub squared ($x --> Int) {
  return $x ** 2;
}
say "2 squared is equal to " ~ squared(2);