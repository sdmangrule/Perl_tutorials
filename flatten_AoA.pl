

my @AoA = (
    [1, 2, 3],
    [4, [5, 6, [7, 8]], 9],
    [10, 11, [12, [13, 14, [15]]]]
);

sub flatten {
    my @out;
    for my $e (@_) {
        if (ref $e eq 'ARRAY') {
            push @out, flatten(@$e);
        } else {
            push @out, $e;
        }
    }
    return @out;
}

my @deep_flat = flatten(@AoA);
print " @deep_flat \n";  