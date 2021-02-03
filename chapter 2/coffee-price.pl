use strict;
use warnings;

use LWP::Simple;

my $page = get("http://beans.itcarlow.ie/prices.html");
die "Couldn't get it!" unless defined $page;
my $price = substr($page, 234, 4);

print $price;