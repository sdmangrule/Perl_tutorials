use strict;
use warnings;

use PerlForums::App;

my $app = PerlForums::App->apply_default_middlewares(PerlForums::App->psgi_app);
$app;

