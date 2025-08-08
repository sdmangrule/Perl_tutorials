package Product;
use Moose;
has 'name' => (is => 'rw', isa => 'Str', required => 1);
has 'price' => (is => 'rw', isa => 'Num', default => sub { 0.00 });

sub display {
    my ($self) = @_;
    return sprintf "%s: \$%.2f", $self->name, $self->price;
}
1;