#!/usr/bin/perl

use strict;
use warnings;

my $text = "Welcome to Perl programming.";
if ($text =~ /perl/)
{
    print "\n Match";
}
else 
{
    print "\n Not match.";
}

$text = 'Contact us at admin@example.com or admin@test.co.in for help';
while ($text =~ /([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-z]{2,})/g)
{
   # print "\n Extracted email : $1";
}

while ($text =~ /([a-zA-z0-9._]+@[a-zA-z0-9.-]+\.[a-z]{2,})/g){
    print "\n".$1;
}