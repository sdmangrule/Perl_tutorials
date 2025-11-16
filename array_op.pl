
use Data::Dumper;
my $str = "sachin mihika shilpa ganesh vishnu sachin";

my @arr = split(" ", $str);

my @arr2 = split /\s+/, $str;
 
print " \n @arr2";

print "\n\n";
my %count;

for my $ele (@arr2)
{
    $count{$ele}++;
}

for my $ele (keys %count)
{
    print "\n $ele => $count{$ele}" ;
}
