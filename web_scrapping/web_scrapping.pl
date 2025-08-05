use LWP::UserAgent;
use HTML::TreeBuilder;

## get all the links from the web page

my $url = "https://www.perl.org";
my $ua = LWP::UserAgent->new();
my $response = $ua->get($url);

if(!$response->is_success){
    die "Failed to fetch ", $response->status_line;
}

my $tree = HTML::TreeBuilder->new();
$tree->parse_content($response->decoded_content);

foreach my $link ($tree->look_down(_tag => 'a')){
    my $href = $link->attr('href');
    print "Link : $href \n" if defined $href;
}

$tree->delete;
