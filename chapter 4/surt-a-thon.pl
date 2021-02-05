use strict;
use warnings;

my $highest_score = 0;
open my $result_f, '<', 'results.txt' or die "Coudn't open file, $!";

while ( my $line = <$result_f> ) {
    chomp $line;
    if ($line > $highest_score) {
        $highest_score = $line;
    }
}

close $result_f;

print "Highest score was: $highest_score\n";