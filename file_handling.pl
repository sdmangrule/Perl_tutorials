#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

eval{
    
    open (FH, "input.txt") or die "Unable to open file.";
    while(my $line = <FH>){
        if (!defined $line) {
            die "Error reading file : $!";
        }
        chomp($line);
        say $line;
    }
    close(FH);
};
if ($@) {
    print "\n Caught the error. ";
}

open (FH, '>>', "input.txt") or die "Unable to open file.";
print FH "HELLOWOOWWOOW \n";
close(FH);