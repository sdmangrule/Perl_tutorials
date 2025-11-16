#!/usr/bin/perl
use strict;
use warnings;

# Step 1: Create a hash of hashes with arbitrary depth
my %HoH = (
    emp1 => {
        name  => "Sachin",
        role  => "Lead Developer",
        skills => {
            backend => {
                lang => "Perl",
                db   => "PostgreSQL",
            },
            devops => {
                tools => {
                    ci => "Jenkins",
                    vcs => "GitHub",
                }
            }
        }
    },
    emp2 => {
        name  => "Amit",
        role  => "Developer",
        skills => {
            backend => { lang => "Python", db => "MySQL" }
        }
    }
);

# Step 2: Recursive subroutine to print nested hash elements
sub print_hash {
    my ($hash_ref, $level) = @_;
    $level //= 0;  # indentation level
 
    for my $key (sort keys %$hash_ref) {
        my $value = $hash_ref->{$key};
        if (ref $value eq 'HASH') {
            # If the value is another hash, print key and recurse
            print "  " x $level, "$key:\n";
            print_hash($value, $level + 1);
        } else {
            # Print key-value pair
            print "  " x $level, "$key => $value\n";
        }
    }
}


# Step 3: Print the whole structure
print "Printing Nested Hash of Hashes:\n";
print_hash(\%HoH);


sub print_hash_each {
    my ($hash_ref, $level) = @_;
    $level //= 0;

    while (my ($key, $value) = each %$hash_ref) {
        if (ref $value eq 'HASH') {
            print "  " x $level, "$key:\n";
            print_hash_each($value, $level + 1);
        } else {
            print "  " x $level, "$key => $value\n";
        }
    }

    # reset iterator (optional)
    #keys %$hash_ref;
}

print "\n Printing Nested Hash of Hashes:\n";
print_hash_each(\%HoH);