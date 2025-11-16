#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %person = (
        "name" => 'sachin',
        "age"  => 36,
        "city" => 'Pune'
);

print "\n Person NAme == $person{'name'}";
print "\n Person age == $person{'age'}";
print "\n Person city == $person{'city'}";

#$person{"job"} = "Engineer";

#print "\n Person job == $person{'job'}" if exists $person{"job"};

#delete ($person{"job"});

#print "\n Person job == $person{'job'}";


print "\n scalar/count of KEYS == ". keys(%person);

while (my ($key, $value) = each (%person)){

    print "\n  $key == $value  \n";
    last;
}

print "Original ", Dumper \%person;

while (my ($key, $value) = each (%person)){

    $person{$value} = $key;
    #last;
}

print "Reversed ", Dumper \%person;

while (my ($key, $value) = each (%person)){

    print "\n  $key == $value  \n";
    last;
}

=cut
## COMMENT the use strict pragma to test below code ####
my %hash = ("Geeks",of, "Geek");

# each() function for scalar context
while (my ($key) = each(%hash))
{
    
    # Printing(key)
    print("$key == $hash{$key} \n");
}
=cut

