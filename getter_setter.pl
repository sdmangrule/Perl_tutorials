package Person1;

sub new{
    my ($class,$name,$age) = @_;
    my $self = {
        name => $name,
        age => $age
    };
    bless $self,$class;
    return $self;
}

1;

#package main;
#require  'C:/Users/sdman/Documents/GitHub/Perl_tutorial/Person1.pm';
#use Person1;

my $teacher = Person1->new;
$teacher->{'name'} = 'SAchin';
$teacher->{'age'} = 30;

print $teacher->{'name'};
print "\n ".$teacher->{'age'};