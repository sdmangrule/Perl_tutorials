#!/usr/bin/perl


my @colors = ("Red","Orange","Yellow");

print "Access elements via index and print \n";

print ("1st Element == ".$colors[0]."\n");
print ("2nd Element == ".$colors[1]."\n");
print ("3rd Element == ".$colors[2]."\n");

print "Iterating over the array.. \n";
foreach my $ele (@colors)
{
    print "$ele \n";
}

# PUSH will add the element at the END of the array.
push @colors, 100;

print "Colors array == @colors \n";

# pop will remove the element from the END of the array.
my $ele = pop @colors;
print " Ele = $ele \n ";
print "Colors array == @colors \n";

# Shift will remove the element from start of the array.
$ele1 = shift @colors;

print " Shifted Element = $ele1 \n ";
print "Colors array == @colors \n";

#unshift will add one element at the start of the array.
unshift @colors, 400;

print "Colors array == @colors \n";

# Negative indexing

print "\n access the last elemnt of the array. \n";
print "$colors[-1]";


# copy 2 arrays into 1 new array.

my @array2 = (1,3,5,7);
my @array3 = (@colors, @array2);

print "\n new array3 == @array3";