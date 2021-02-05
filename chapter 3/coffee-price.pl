use strict;
use warnings;
use POSIX qw(strftime);

use LWP::Simple;

my $datetime = strftime "%Y-%m-%d %H:%M", localtime;

sub save_to_file {
    my $msg = shift;
    open FH, '>>', "twitter.txt" or die "Coudn't open file, $!";
    print FH "$datetime $msg\n";
    close FH;
}

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
    save_to_file(get_price());
} else {
    my $price = 99.9;
    while ($price > 4.74) {
        sleep(900);
        $price = get_price();
    }
    save_to_file("Buy!");
}