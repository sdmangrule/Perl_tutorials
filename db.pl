
use DBI;

my $dsn = "DBI:mysql:test";

my $dbh = DBI->connect($dsn, $user,$pass, RaiseError=>1, AutoCommit=>1) or die DBI::errstr;

my $sth = $dbh->prepare("select * from emp");
$sth->execute();

while(my @row = $sth->fetchrow_array()){

    print " @row \n";
}

$dbh->disconnect();
