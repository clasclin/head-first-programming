use strict;
use warnings;

use lib 'lib';
use Transactions ':all';
use Promotion    ':all';

my @items = ("DONUT", "LATTE", "FILTER", "MUFFIN");
my @prices = (1.50, 2.0, 1.80, 1.20);

my $running = 1;
while ($running) {
    my $option = 1;
    for my $choice (@items) {
        print "$option $choice\n";
        $option++;
    }
    print "$option . Quit\n";
    print "Choose an option: ";
    my $choice = <STDIN>;
    if ($option == $choice) {
        $running = 0;
    } else {
        print "Credit card number: ";
        chomp(my $credit_card = <STDIN>);
        my $new_price = discount($prices[$choice - 1]);
        save_transactions($new_price, $credit_card, $items[$choice - 1]);
    }
}