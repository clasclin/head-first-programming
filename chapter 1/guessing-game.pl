use strict;
use warnings;

print "Welcome\n";

my $guess = 0;
while ($guess != 5) {
    print "Guess the number: ";
    chomp($guess = <STDIN>);

    if ($guess == 5) {
        print "You win!\n";
    } else {
        if ($guess > 5) {
            print "Too high\n";
        } else {
            print "Too low\n";
        }
    }
}

print "Game Over!\n";
