package Employee;

use parent 'Person';

sub new{
    my ($class, $name, $age, $job) = @_;
    my $self = $class->SUPER::new($name,$age);
    $self->{job} = $job;
    bless $self,$class;
    return $self;
}

sub greet{
    my ($self) = @_;
    return $self->SUPER::greet(). "I work as a $self->{job}." ;
}
1;
