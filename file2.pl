use strict;
use warnings;

my $file = "./input.txt";

eval{
    open(FH, $file); 
    while(<FH>){
        print $_;
    }
    close(FH)
};
if($@)
{
    print "\n\n Unable to open file...";
}


