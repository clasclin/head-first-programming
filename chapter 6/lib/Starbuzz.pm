package Starbuzz;

use strict;
use warnings;

use Exporter 'import';

our @EXPORT      = qw( discount );
our %EXPORT_TAGS = ( all => \@EXPORT );

sub discount {
    my $price = shift;
    return 0.95 * $price;
}

1;