use strict;
use warnings;

open(my $fh, "<", "app.log") or die "Cannot open file";

while(my $line = <$fh>) {
    if ($line =~ /^(\S+\s+\S+)\s+ERROR\s+(.*)$/) {
        print "$1 $2\n";
    }
}

close($fh);