use strict;
use warnings;

my @scores;
open my $result_f, '<', 'results.txt' or die "Coudn't open file, $!";

while ( my $line = <$result_f> ) {
    chomp $line;
    my ($name, $score) = split /\s+/, $line, 2;
    push @scores, $score;
}

close $result_f;

@scores = reverse sort @scores;

print "Highest score was:\n";
print "$scores[0]\n";
print "$scores[1]\n";
print "$scores[2]\n";