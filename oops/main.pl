#require  'C:/Users/sdman/Documents/GitHub/Perl_tutorial/oops/User.pm';
#use Person;
#use Employee;

#use FindBin;
#use lib "$FindBin::Bin";  # adds current script dir to @INC
#use User;

#use User;

#my $per1 =  Person->new("Sachin", 36);
#print $per1->greet();

#my $emp = Employee->new("Sachjin", 36, "Software Developer");
#print $emp->greet();
use strict;
use warnings;
require  'C:/Users/sdman/Documents/GitHub/Perl_tutorial/oops/User.pm';
#use User;

my $u = User->new(
    name => "Sachin",
    age  => 25,
);

print $u->name, "\n";   # getter
print $u->age,  "\n";   # getter

$u->name("Rahul");       # setter
$u->age(30);             # setter

print $u->name, "\n";
print $u->age,  "\n";
