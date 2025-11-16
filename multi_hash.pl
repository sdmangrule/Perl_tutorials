# !/usr/bin/perl 
# Perl program to demonstrate
# Traversing of 
# Multidimensional hash
use strict; 
use warnings;
use Data::Dumper qw(Dumper); 

my %company = ('Sales' =>    {
                                'Brown' => 'Manager',
                                'Smith' => 'Salesman',
                                'Albert' => 'Salesman', 
                            }, 
            'Marketing' =>  {
                                'Penfold' => 'Designer',
                                'Evans' => 'Tea-person',
                                'Jurgens' => 'Manager', 
                            },
            'Production' => {
                                'Cotton' => 'Paste-up',
                                'Ridgeway' => 'Manager',
                                'Web' => 'Developer', 
                            },
            ); 

print "Traversing hash using For loop: "."\n";
print "\n";

# traversing hash using for loop
for my $key (keys %company) 
{
    print "$key: \n";
    for my $ele (keys %{$company{$key}}) 
    {
        print " $ele: " . $company{$key}->{$ele} . "\n";
    }
}

print "\nTraversing hash using while" . 
      "loop using each keyword: " . "\n";
print "\n";

# traversing hash using each keyword
# and while loop
while ((my $key, my $ele) = each %company)
{
    print "$key: \n";
    while ((my $ele, my $sub_ele) = each %$ele)
    {
        print " $ele = $sub_ele \n";
    }
    print "\n";
}

while (my ($key, $ele) = each %company){

    print " $key :\n";

    while(my ($key1, $val1) = each %$ele){
            print " $key1 ==> $val1 \n";
        }
    print "\n";
}


while (my ($key, $val) = each %company ){

    print " $key :\n";

    while (my ($key1, $val1) = each %$val ){

    print " $key1 => $val1 \n";
    }
    print "\n";
}

my $company2 = {'Sales' =>    {
                                'Brown' => 'Manager',
                                'Smith' => 'Salesman',
                                'Albert' => 'Salesman', 
                            }, 
            'Marketing' =>  {
                                'Penfold' => 'Designer',
                                'Evans' => 'Tea-person',
                                'Jurgens' => 'Manager', 
                            },
            'Production' => {
                                'Cotton' => 'Paste-up',
                                'Ridgeway' => 'Manager',
                                'Web' => 'Developer', 
                            },
}; 

while (my ($key, $val)  = each %$company2){

    print " $key :::\n ";
    while (my ($key1, $val1)  = each %$val){

    print " $key1 ====> $val1 \n ";
    }
    print "\n";
}
