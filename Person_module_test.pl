
    package Person;

    # Constructor
    sub new {
        my ($class, %args) = @_;
        my $self = {
            name => $args{name} || '',
            age  => $args{age}  || 0,
        };
        bless $self, $class;
        return $self;
    }

    # Getter / Setter for name
    sub name {
        my ($self, $value) = @_;
        $self->{name} = $value if defined $value;  # Setter
        return $self->{name};                      # Getter
    }

    # Getter / Setter for age
    sub age {
        my ($self, $value) = @_;
        $self->{age} = $value if defined $value;
        return $self->{age};
    }

    1;  # return true



print "=== Testing Person Module ===\n";

# Create object
my $p = Person->new(name => "Alice", age => 25);

# Use getter (calling without argument)
print "Name: ", $p->name(), "\n";
print "Age : ", $p->age(), "\n";

# Use setter (passing argument)
$p->name("Bob");
$p->age(30);

print "Updated Name: ", $p->name(), "\n";
print "Updated Age : ", $p->age(), "\n";
