say "\nVARIABLES\n";

# $ is used for scalars (variables)
# @ is used for arrays
# % is used for hashes (dictionaries)

# String
my $name = 'John Doe';
say $name;
say $name.uc;       # Uppercase
say $name.chars;    # Length
say $name.flip;     # Reverse

# Integer
my $age = 99;
say $age;
say $age.is-prime;

# Arrays
my @animals = 'camel','llama','owl';
say @animals;
say "The zoo contains " ~ @animals.elems ~ " animals";
say "The animals are: " ~ @animals;
say "I will adopt an owl for the zoo";
@animals.push("owl");
say "Now my zoo has: " ~ @animals;
say "The first animal we adopted was the " ~ @animals[0];
@animals.pop;
say "Unfortunately the owl got away and we're left with: " ~ @animals;
say "We're closing the zoo and keeping one animal only";
say "We're going to let go: " ~ @animals.splice(1,2) ~ " and keep the " ~ @animals;

# Fixed-size arrays
my @array[3];
@array[0] = "first value";
@array[1] = "second value";
@array[2] = "third value";
say @array;

# Multi-dimensional arrays
my @tbl[3;2];
@tbl[0;0] = 1;
@tbl[0;1] = "x";
@tbl[1;0] = 2;
@tbl[1;1] = "y";
@tbl[2;0] = 3;
@tbl[2;1] = "z";
say @tbl;

# Hashes (Dictionaties)
my %capitals = 'UK','London','Germany','Berlin';
say %capitals;

# or we can use this syntax to declare the hash-table
my %capitals2 = UK => 'London', Germany => 'Berlin';
say %capitals2;
%capitals2.push: (France => 'Paris');
say %capitals2;
say %capitals2.kv;
say %capitals2.keys;
say %capitals2.values;
say "The capital of France is: " ~ %capitals2<France>;

# Types
my $var = 'Text';
say $var;
say $var.WHAT;

$var = 123;
say $var;
say $var.WHAT;

# We can use static typing
my Int $var_ = 123;
say $var_;
say $var_.WHAT;

my Int @array2 = 1,2,3;
say @array2;
say @array2.WHAT;

# Assignment vs binding (= vs :=)
# This works fine
my Int $var1 = 123;
say $var1;
$var1 = 999;
say $var1;

# But this produces an error
my Int $var2 := 123;
say $var2;
#$var2 = 999;
#say $var2;

# Variables can also be bound to other variables:
my $a;
my $b;
$b := $a;
$a = 7;
say $b;
$b = 8;
say $a;