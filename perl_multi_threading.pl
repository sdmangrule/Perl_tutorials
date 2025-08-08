use Parallel::ForkManager;
my $pm = Parallel::ForkManager->new(4); # Max 4 processes
for my $item (1..8) {
    $pm->start and next;
    print "Processing $item in PID $$\n";
    $pm->finish;
}
$pm->wait_all_children;