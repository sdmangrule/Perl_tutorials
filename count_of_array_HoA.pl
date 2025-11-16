use Data::Dumper;

my %HoA = (
    key1 => [3,5,67,87],
    key2 => [1,2,4],
    key3 => [34,56,89,23,12]
);

while (my($k, $v) = each (%HoA))
{
    print "\n Key == $k and count of array == ".@{$HoA{$k}};
}

my @AoA = (
     [3,5,67,87],
     [1,2,4],
    [34,56,89,23,12]
);

print "\n AoA == ".Dumper(\@AoA);

sub flatten
{
    my @out;
    for my $ele (@_)
    {
        if(ref $ele eq 'ARRAY')
        {
            push @out, flatten(@$ele);
        }
        else
        {
            push @out, $ele;
        }
    }
    return @out;
}


my @output = flatten(@AoA);

print "\n flatten array == @output";



my %HoA = (
    key1 => [3,5,67,87],
    key2 => [1,2,4],
    key3 => [34,56,89,23,12]
);

while (my ($k, $v) = (each %HoA)){
    print "\n Key == $k AND count == ".@{$HoA{$k}};
}

my %hash = (
    key1 => 22,
    key2 => 34,
    key3 => 11,
    key4=> 02
);

print "\n\n ".Dumper(\%hash);
=start
my @new = sort {$a cmp $b} keys %hash;
print "\n Sorted hash with keys == ".Dumper(\@new);


 @new = sort {$a <=> $b} values %hash;
print "\n Sorted hash VALUES == ".Dumper(\@new);
=cut

#@new = sort {$hash{$a} <=> $hash{$b}} keys %hash;
#print "\n Sorted hash using KEYS but sort on VALUES== ".Dumper(\%hash);

foreach my $s (sort {$hash{$a} <=> $hash{$b}} keys %hash)
{
    print "  \n $s =>  $hash{$s}";
}

my %data = (
    apple  => 5,
    banana => 2,
    orange => 8,
    grape  => 1,
);

# Sort keys by their corresponding numerical values in ascending order
my @sorted_keys = sort { $data{$a} <=> $data{$b} } values %data;

print "Sorted by value (ascending): keys %data \n". Dumper(keys %data);
foreach my $key (@sorted_keys) {
    print "$key: $data{$key}\n";
}



my %data = (
    apple  => 5,
    banana => 2,
    orange => 8,
    grape  => 1,
);


foreach my $k (sort {$hash{$a} <=> $hash{$b}} keys %hash){

    print "\n\n $k ==> $hash{$k}";
}