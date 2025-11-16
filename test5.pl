#!/usr/bin/perl


use Data::Dumper;

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

print Dumper(\%HoH);


$coderef = sub { print "Boink!\n" };

&$coderef;