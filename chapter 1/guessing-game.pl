use strict;
use warnings;

print "Welcome\n";
print "Guess the number: ";
chomp(my $guess = <STDIN>);

if ($guess == 5) {
    print "You win!\n";
} else {
    print "You lose!\n";
}

print "Game Over!\n";
