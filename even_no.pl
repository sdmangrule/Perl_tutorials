use strict;
use warnings;

my %count;

while(<>){

    foreach my $w (split /\s+/){
        $count{$w}++;
    }

}

foreach my $k (keys %count){
    print "$k $count{$k}\n";
}