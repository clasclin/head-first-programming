use strict;
use warnings;

print "Welcome\n";
my $secret = 1 + int rand(10);

my $guess = 0;
while ($guess != $secret) {
    print "Guess the number: ";
    chomp($guess = <STDIN>);

    if ($guess == $secret) {
        print "You win!\n";
    } else {
        if ($guess > $secret) {
            print "Too high\n";
        } else {
            print "Too low\n";
        }
    }
}

print "Game Over!\n";
