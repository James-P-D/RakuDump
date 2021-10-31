say "\INPUT AND OUTPUT\n";

# say appends a new line
say "hello";
say "how are you?";

# print does not
print "how ";
print "are ";
print "you?\n";

# get can be used to read from stdin
my $name;
say "Hi, what's your name?";
$name = get;
say "Dear $name welcome to Raku";

# prompt is like input() in python
my $name = prompt "Hi, what's your name? ";
say "Dear $name welcome to Raku";

# shell can be used to execute shell commands
shell 'dir';

# run can be used to execute commands without the shell
run "cmd.exe"
