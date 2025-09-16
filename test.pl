

use strict;
use warnings;
use feature 'say';

print "Hello World";

print "\n Enter your age:";

my $age = <STDIN>;
chomp($age);

if ($age < 18)
{
    say "You are not eligible to Vote !";
}
else{
    say " You are eligible to vote";
}

sub factorial
{
    my $n = shift;
    return 1 if $n == 0;
    return $n * factorial($n-1);
}

print " Factorial of 5 == ".factorial(5);