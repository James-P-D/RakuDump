say "\nCONDITIONALS AND LOOPS\n";

# if..elsif..else
my $age = 19;

if $age < 18 {
  say 'Young'
} elsif ($age > 18) && ($age < 40) {
  say 'Youngish'
} else {
  say 'really old'
}

# We can use 'unless' instead of 'if not'
my $clean-shoes = False;

if not $clean-shoes {
  say 'Clean your shoes'
}
unless $clean-shoes {
  say 'Clean your shoes'
}

# with and without can be used to check if variables are defined or not
my Int $var=1;
with $var {
  say 'var exists'
}
my Int $unnitialised;
without $unnitialised {
  say 'unnitialised is not initialised'
}

# for loops use 'loop'
my Int $count;
loop ($count = 1 ; $count <= 3 ; $count++) {
    print "count is $count\n"
}

# We can do a 'for-each'
my @array = 1,2,3;
for @array -> $array-item {
  say $array-item * 100
}

# given can be used for 'switch'
my $var2 = 42;
given $var2 {
    when 0..50 { say 'Less than or equal to 50'}
    when Int { say "is an Int" }
    when 42  { say 42 }
    default  { say "huh?" }
}

# We can add 'proceed' to match on multiple conditions
given $var2 {
    when 0..50 { say 'Less than or equal to 50';proceed}
    when Int { say "is an Int";proceed}
    when 42  { say 42 }
    default  { say "huh?" }
}