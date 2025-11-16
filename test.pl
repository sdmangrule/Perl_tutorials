use strict;
use warnings;

# Create a hash of arrays
my %data = (
    'key1' => [ 'apple', 'banana', 'cherry' ],
    'key2' => [ 'dog', 'cat', 'bird' ],
    'key3' => [ 'red', 'green', 'blue' ]
);

# Access the array associated with 'key2' and print its elements
# The array at the "second position" refers to the array associated with 'key2'
# if we consider a conceptual ordering, or simply a specific key's array.
# Assuming you want the array referenced by 'key2'.
my $array_ref = $data{'key2'};

# Dereference the array reference and print its elements
# The index '1' in @{$array_ref}[1] refers to the second element within that array.
# If you want to print the *entire* array at the second position in the hash (e.g., 'key2's array),
# then loop through it or join its elements.

# To print the entire array associated with 'key2':
print "Array at 'key2': @{$array_ref}\n";

foreach my $ele (@$array_ref)
{
    print "\n $ele";
}

print "\n\n  $array_ref->[1] ";

# To print the second element *within* the array associated with 'key2':
print "\n\n Second element in 'key2's array: @{$array_ref}[1]\n";


my @arr = (4,5,6);

print " \n $arr[1]";