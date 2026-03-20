
use Data::Dumper;

my @purchases = (
    { customer => 'Alice',
      items => [ 
        { category => 'A', value => 10 },
        { category => 'B', value => 5 } ] 
    },
    { customer => 'Bob',   items => [ { category => 'A', value => 3  }, { category => 'A', value => 12 } ] },
    { customer => 'Charlie', items => [ { category => 'C', value => 7 }, { category => 'B', value => 8 } ] },
);

my %t;
foreach my $p (@purchases)
{
    foreach my $i (@{$p->{items}})
    {
        $t{$i->{category}} += $i->{value};
    }
}
print Dumper(\%t);


#O/p should be -
#Category Total value =  
#$VAR1 = {
#          'B' => 13,
#          'A' => 25,
#          'C' => 7
#        };

#print Dumper(\@purchases);

#print $purchases[0]{'items'}[1]{'category'};












my %total;
foreach my $p (@purchases)
{
    foreach my $item (@{$p->{items}}){
    #print Dumper($item);
    # print "\n $item->{category} ==> $item->{value}";
    $total{$item->{category}} += $item->{value};
    }
}  


# foreach my $e ($purchases{items})
# {
#     #print "\n $e ";
#     foreach my $k ($e)
#     {
#         #print Dumper($k);
#         foreach my $dd ($k->{'items'})
#         {
#             print Dumper($dd);
#         }
#     }
# }

# my %total;

# for my $p (@purchases) {
#     for my $i (@{ $p->{items} }) {
#         $total{ $i->{category} } += $i->{value};
#     }
# }

#  print Dumper(\%total);