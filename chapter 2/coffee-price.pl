use strict;
use warnings;

use LWP::Simple;

my $page = get("http://beans.itcarlow.ie/prices.html");
die "Couldn't get it!" unless defined $page;

print $page;