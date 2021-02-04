use strict;
use warnings;

use LWP::Simple;

sub get_price {
    my $page = get("http://beans.itcarlow.ie/prices.html");
    die "Couldn't get it!" unless defined $page;
    
    my $index = index($page, '>$') + 2;
    my $last = 4;
    
    print substr($page, $index, $last);
}

get_price();

# my $price = 99.9;
# while ($price > 4.74) {
    # sleep(900);
# 
# }
# 
# print "Buy!\n";