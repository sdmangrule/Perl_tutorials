package Person;
use Moose;

has 'name' => (is => 'rw');
has 'age'  => (is => 'ro');

1;

#use Person;

my $teacher = Person->new;
$teacher->name('Sachin');

print $teacher->name;