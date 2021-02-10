package Transactions;

use strict;
use warnings;

use Exporter 'import';

our @EXPORT      = qw( save_transactions );
our %EXPORT_TAGS = ( all => \@EXPORT );

sub save_transactions {
    my ($price, $credit_card, $description) = @_;
    open my $fh, '>>', 'transactions.txt'
        or die "Coudn't open file: $!";
    printf $fh "%07d%16s%16s\n", $price * 100, $credit_card, $description;
    close $fh;
}

1;