say "\nEXCEPTIONS\n";

my Int $a = 1;
my Int $b = 2;
my Int $c = 0;

try {
  $a = $b div $c;
  say $a;
  CATCH {
    default {
      say "Something went wrong!";
    }
  }
}