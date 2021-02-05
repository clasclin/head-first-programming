use strict;
use warnings;

use LWP::Simple;

sub get_price {
    my $page = get("http://beans.itcarlow.ie/prices.html");
    die "Couldn't get it!" unless defined $page;
    
    my $index = index($page, '>$') + 2;
    my $last = 4;
    
    return substr($page, $index, $last);
}

print "Emergency order [Y/N]? ";
chomp(my $emergency_order = <STDIN>);

if ($emergency_order eq "Y") {
    print get_price();
} else {
    my $price = 99.9;
    while ($price > 4.74) {
        sleep(900);
        $price = get_price();
        print $price;
    }
    print "Buy!\n";
}