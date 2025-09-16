use DBI;

my $database = "testdb";
my $driver = "SQLite";
my $dsn = "DBI:$driver:dbname=$database";

my $username = "";
my $password = "";

my $dbh = DBI->connect($dsn, $username,$password {RaiseError => 1 , AutoCommit => 1}) or die "DBI::errstr";

print "\n Connected to DB successfully";

$dbh->disconnect();

