use strict;
use warnings;

print "Welcome\n";
print "Guess the number: ";
chomp(my $guess = <STDIN>);

if ($guess == 5) {
    print "You win!\n";
} else {
    if ($guess > 5) {
        print "Too high\n";
    } else {
        print "Too low\n";
    }
}

print "Game Over!\n";
