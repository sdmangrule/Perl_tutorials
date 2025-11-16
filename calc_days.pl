#!/usr/bin/perl
use strict;
use warnings;
use DateTime;
use DateTime::Format::Strptime;

# Usage: perl task_end_date.pl "2025-10-27" "5 days"

my ($start_date_str, $duration_str) = @ARGV;

# Validate arguments
if (not $start_date_str or not $duration_str) {
    die "Usage: perl $0 <start_date: YYYY-MM-DD> <duration: e.g. '5 days'>\n";
}

# Parse the start date
my $strp = DateTime::Format::Strptime->new(
    pattern => '%Y-%m-%d',
    on_error => 'croak',
);
my $start_date = $strp->parse_datetime($start_date_str);

# Extract number of days
my ($num_days) = $duration_str =~ /(\d+)/;
die "Invalid duration format\n" unless defined $num_days;

# Define holidays (expand as needed)
my @holidays = (
    '2025-10-20',  # Example: Diwali
    '2025-10-21',  # Diwali next day
    '2025-01-26',  # Republic Day
    '2025-08-15',  # Independence Day
);

# Convert to hash for fast lookup
my %holiday_lookup = map { $_ => 1 } @holidays;

my $days_added = 0;
my $current_date = $start_date->clone();

while ($days_added < $num_days) {
    $current_date->add(days => 1);

    # Skip weekends
    my $dow = $current_date->day_of_week; # 1=Mon .. 7=Sun
    next if ($dow == 6 or $dow == 7);

    # Skip holidays
    my $date_str = $current_date->ymd;
    next if exists $holiday_lookup{$date_str};

    # Count as a working day
    $days_added++;
}

print "Task starting on: ", $start_date->ymd, "\n";
print "Task duration: $num_days working days\n";
print "Expected completion date: ", $current_date->ymd, "\n";