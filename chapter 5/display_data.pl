use strict;
use warnings;

my $line = "101;Johnny 'wave-boy' Jones;USA;8.32;Fish;21";
my %s;

($s{'id'}, $s{'name'}, $s{'country'}, $s{'average'}, $s{'board'}, $s{'age'}) = split /;/, $line;

printf "ID:%12s\nName:%30s\nCountry:%7s\nAverage:%8s\nBoard type:%5s\nAge:%10s", 
    $s{'id'}, $s{'name'}, $s{'country'}, $s{'average'}, $s{'board'}, $s{'age'};