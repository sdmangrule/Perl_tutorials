#!/usr/bin/perl
use strict;
use warnings;

my $log_file = "logs.txt";

open(my $FH, '<', $log_file) or die " Unable to open $log_file : $! \n";

sub menu{
    print "\n----- Log Parser Tool -----\n";
    print "1. Show all logs \n";
    print "2. Show ERROR logs \n";
    print "3. Show WARNING logs \n";
    print "4. Show INFO logs \n";
    print "5. Search logs by keyword \n";
    print "6. Exit \n";
    print "Choose an option: ";
    chomp(my $choice = <STDIN>);
    return $choice;
}

sub display_logs{
    my ($filter) = @_;
    seek($FH, 0,0);
    while (my $line = <$FH>){
        if(!$filter || $line =~ /\[$filter\]/){
            print $line;
        }
    }
}

sub search_logs{
    print "\n Enter the keyword to search:";
    chomp(my $keyword = <STDIN>);
    seek($FH, 0,0);

    my $found = 0;
    while (my $line = <$FH>){
        if ($line =~ /$keyword/i ){
            print $line;
            $found = 1;
        }
    }
    print "No matching logs found. \n" unless $found;
}

while(1){
    my $choice = menu();
       if ($choice == 1) {display_logs("");}
    elsif ($choice == 2) {display_logs("ERROR");}
    elsif ($choice == 3) {display_logs("WARNING");}
    elsif ($choice == 4) {display_logs("INFO");}
    elsif ($choice == 5) {search_logs();}
    elsif ($choice == 6) {print " Exiting....\n"; last;}
    else  {print "Invalid option.. please try again.. ";}

}
close($FH);
