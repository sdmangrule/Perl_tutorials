use lib ".";
use Person;
use Employee;


#my $per1 =  Person->new("Sachin", 36);
#print $per1->greet();

my $emp = Employee->new("Sachjin", 36, "Software Developer");
print $emp->greet();