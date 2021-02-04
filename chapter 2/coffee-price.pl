use strict;
use warnings;

use LWP::Simple;

my $price = 99.9;
while ($price > 4.74) {
    sleep(900);
    my $page = get("http://beans.itcarlow.ie/prices.html");
    die "Couldn't get it!" unless defined $page;
    
    my $index = index($page, '>$') + 2;
    my $last = 4;
    
    my $price = substr($page, $index, $last);
}

print "Buy!\n";