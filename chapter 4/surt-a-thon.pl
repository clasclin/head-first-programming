use strict;
use warnings;

my $highest_score = 0;
open my $result_f, '<', 'results.txt' or die "Coudn't open file, $!";

while ( my $line = <$result_f> ) {
    chomp $line;
    my ($name, $score) = split /\s+/, $line, 2;
    if ($score > $highest_score) {
        $highest_score = $score;
    }
}

close $result_f;

print "Highest score was: $highest_score\n";