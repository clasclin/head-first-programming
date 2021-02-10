use strict;
use warnings;

sub save_transactions {
    my ($price, $credit_card, $description) = @_;
    open my $fh, '>>', 'transactions.txt'
        or die "Coudn't open file: $!";
    printf $fh "%16s%07d%16s\n", $credit_card, $price * 100, $description;
    close $fh;
}

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
        save_transactions($prices[$choice - 1], $credit_card, $items[$choice - 1]);
    }
}