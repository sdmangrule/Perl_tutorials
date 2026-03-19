use strict;
use warnings;

my %students = (
    John => { score => 85, age => 20 },
    Sam  => { score => 92, age => 21 },
    Ravi => { score => 78, age => 19 },
    Amit => { score => 90, age => 22 }
);

foreach my $name (sort {$students{$b}{score} <=> $students{$a}{score} } keys %students){
    print "\n $name => $students{$name}{score}";
}

