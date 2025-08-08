use strict;
use warnings;
use v5.10;
#use feature 'say';
use lib ".";

use Person;
 
my $teacher = Person->new( name => 'Joe' );
say $teacher->name;