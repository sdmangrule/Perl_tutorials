#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use feature 'state';

#perl have 3 scopes 
# Global - (our) - accessible throughout the script
# Lexical - (my) - restricted to block or subroutine
# Persistent -  (state) - retains values across multiple function calls

our $global_var = 10;
sub show_global{
    my $lexi_var = 20;
    say "Gloable var == ". $global_var;
    say "Lexical var == ". $lexi_var;

}
show_global();

sub counter{
    my $count = 0;
    $count++;
    say "Count = $count";
}

counter();
counter();
counter();

