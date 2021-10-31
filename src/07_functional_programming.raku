say "\nFUNCTIONAL PROGRAMMING\n";

# Functions are first-class citizens so can be passed as parameters, returned from functions and assigned to variables
my @array = <1 2 3 4 5>;
sub squared($x) {
  $x ** 2
}
# Note we need to use & to pass the funciton as a parameter
say map(&squared, @array);

# We can create anonymous functions (lambdas)
say map(-> $x {$x ** 2}, @array);

my $squared = -> $x {
  $x ** 2
}
say $squared(9);

# In Raku, methods can be chained, so you’re not required to pass the result of one method to another as an argument.
my @final-array1 = reverse(sort(unique(@array)));
say @final-array1;
# ..can be rewritten as..
my @final-array2 = @array.unique.sort.reverse;
say @final-array2;

# Feed operator
@array ==> unique()
       ==> sort()
       ==> reverse()
       ==> my @final-array;
say @final-array;

my @final-array-v2 <== reverse()
                   <== sort()
                   <== unique()
                   <== @array;
say @final-array-v2;

# The hyper operator >>. will call a method on all elements of a list and return a list of the results.
sub is-even($var) { $var %% 2 };
say @array>>.is-prime;
say @array>>.&is-even;

# A junction is a logical superposition of values.
# In the below example 1|2|3 is a junction.
my $var = 2;
if $var == 1|2|3 {
  say "The variable is 1 or 2 or 3"
}

# Lazy lists are only calculated when needed
my $lazylist = (1 ... 10);
say $lazylist;

my $lazylist2 = (1 ... Inf);
say $lazylist2;

my $lazylist3 = (0,2 ... 10);
say $lazylist3;

# Closures - All code objects in Raku are closures, which means they can reference lexical variables from an outer scope.
sub generate-greeting {
    my $name = "John Doe";
    sub greeting {
      say "Good Morning $name";
    };
    return &greeting;
}
my $generated = generate-greeting;
$generated();

# ..or a better example..
sub greeting-generator($period) {
  return sub ($name) {
    return "Good $period $name"
  }
}
my $morning = greeting-generator("Morning");
my $evening = greeting-generator("Evening");

say $morning("John");
say $evening("Jane");