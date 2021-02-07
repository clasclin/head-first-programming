use strict;
use warnings;

my %scores;
open my $result_f, '<', 'results.txt' or die "Coudn't open file, $!";

while ( my $line = <$result_f> ) {
    chomp $line;
    my ($name, $score) = split /\s+/, $line, 2;
    $scores{$score} = $name;
}

close $result_f;

print "Highest score was:\n";
foreach my $each_score (reverse sort keys %scores) {
    print "Surfer $scores{$each_score} scored $each_score\n";
}