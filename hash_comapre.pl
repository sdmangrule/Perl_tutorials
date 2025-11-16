#!/usr/bin/perl
use strict;
use warnings;

my %hash1 = ( a => 1, b => 2, c => 3 );
my %hash2 = ( a => 21, b => 2, c => 3 );

if (is_hash_equal(\%hash1, \%hash2)) {
    print "Hashes are equal\n";
} else {
    print "Hashes are different\n";
}

sub is_hash_equal {
    my ($h1, $h2) = @_;

    # Compare key counts
    return 0 unless keys %$h1 == keys %$h2;

    # Compare each key/value
    for my $key (keys %$h1) {
        return 0 unless exists $h2->{$key};
        return 0 unless $h1->{$key} eq $h2->{$key};
    }
    return 1;
}