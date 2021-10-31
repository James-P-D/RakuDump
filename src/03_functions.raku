say "\nFUNCTIONS AND MUTATORS\n";

# It is important to differentiate between functions and mutators.
# Functions do not change the state of the object they were called on.
# Mutators modify the state of the object.

my @numbers = [7,2,4,9,11,3];

@numbers.push(99);
say @numbers;      # [7 2 4 9 11 3 99]
say @numbers.sort; # (2 3 4 7 9 11 99)
say @numbers;      # [7 2 4 9 11 3 99]
@numbers.=sort;
say @numbers;      # [2 3 4 7 9 11 99]

