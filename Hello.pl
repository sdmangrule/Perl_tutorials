#!/usr/bin/perl

print ("Hello, World..");


my @arr1 = (12,23,12,12,32,34);
my @arr2 = (45,67,78,989,89);

my %unique;

foreach my $ele (@arr1, @arr2){
    $unique{$ele}++;
}

#print "\n". $key  for (each %unique);

while (my ($key, $value) = each (%unique)){
    print "\n $key ==> $value";
}
