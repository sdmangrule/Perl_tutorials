use strict;
use warnings;
use v5.10;
use feature 'say';
use lib ".";

use Bank;

my $b1 = Bank->new(123,"Sachin", 2000); 
#my $teacher = Person->new( name => 'Joe' );
#say $teacher->name;

$b1->get_info;

$b1->deposit(2000);

$b1->get_info;
#for (my $i = 1, my $j = 10; $i <= $j; $i++, $j--) {
#    print "$i, $j ";
#}

my $i = 1;
my $j = 10;
while ($i<=$j)
{
    print " $i  $j ";
    $i++; $j--;
}