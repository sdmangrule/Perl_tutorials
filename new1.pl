#!/usr/bin/perl


# Step 1: Create a hash of hashes with arbitrary depth
my %HoH = (
    emp1 => {
        name  => "Sachin",
        role  => "Lead Developer",
        skills => {
            backend => {
                lang => "Perl",
                db   => "PostgreSQL",
            },
            devops => {
                tools => {
                    ci => "Jenkins",
                    vcs => "GitHub",
                }
            }
        }
    },
    emp2 => {
        name  => "Amit",
        role  => "Developer",
        skills => {
            backend => { lang => "Python", db => "MySQL" }
        }
    }
);

my %data = (
    'user1' => {
        'name'  => 'Alice',
        'email' => 'alice@example.com',
        'age'   => 30
    },
    'user2' => {
        'name'  => 'Bob',
        'email' => 'bob@example.com',
        'age'   => 25
    },
    'user3' => {
        'name'  => 'Charlie',
        'email' => 'charlie@example.com',
        'age'   => 35
    }
);

for my $key (keys %data)
{
    print "\n $key ";
    for my $e (keys %{$data{$key}})
    {
        print " \n $e => $data{$key}{$e}";
    }
}




sub print_hash{

my $hash = shift;
for my $key (keys %$hash)
{
    my $val = $hash->{$key};
    if (ref $val eq 'HASH'){
        print "\n $key :";
        print_hash($val);
    }
    else{
        print "\n $key => $val";
    }
}

}

#print_hash(\%data);
#print_hash(\%HoH);



sub print_hash2{
my $hash = shift;

for my $key (keys %$hash){
    my $val = $hash->{$key};

    if (ref $val eq 'HASH')
    {
        print "\n $key :";
        print_hash2($val);
    }
    else{
    print "\n $key => $val ";
    }
}
}

#print_hash2(\%HoH);

