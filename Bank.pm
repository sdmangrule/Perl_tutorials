package Bank;

sub new {

    my $class = shift;
    my $self = {
        account_no => shift,
        name => shift,
        balance => shift
    };
    bless($self, $class);
    return $self; 
}

sub show_bal{
    my ($self) = @_;
    print "\n Current balance = ".$self->{balance};
}

sub deposit{
    my ($self, $amount) = @_;
    $self->{balance} = $self->{balance} + $amount;
    print "\n Deposit done."; 
}

sub withdraw{
    my ($self, $amount) = @_;
    $self->{balance} = $self->{balance} - $amount;
    print "\n Withdraw done."; 
}

sub get_info{
    my ($self) = @_;
    print "\n Customer info = ".$self->{account_no};
    print "\n Customer info = ".$self->{name};
    print "\n Customer info = ".$self->{balance};
}

return 1;