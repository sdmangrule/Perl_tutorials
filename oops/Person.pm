package Person;

sub new {
    my ($class, $name, $age) = @_;
    my $self = {
        name => $name,
        age => $age
    };
    bless $self, $class;
    return $self;
}

sub greet{
    my ($self) = @_;
    return "Hello I am $self->{name} and I am $self->{age} years old. ";
}
1;