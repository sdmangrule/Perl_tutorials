#!/usr/bin/perl

use Data::Dumper;

#$_ = "Hello World";

#$line = lc($line);

my $w = (split / /);
print "\n Words == $w ";
my $l = (split //);
print "\n letters == $l \n";
my $count= {};

foreach my $l( split //)
{
    #print "\n $l";
    if ($l =~ /[a-zA-Z]/){
        $count->{$l}++;
    }
}
print Dumper($count);

my $i = 0;
while($i < 5)
{
    print;
    $i++;
}