use strict;
use warnings;

sub find_details {
    my $id = shift;
    open my $fh, '<', 'surfing_data.csv' 
        or die "Coudn't open file!: $!";
    while (<$fh>) {
        my %s;
        ($s{'id'}, $s{'name'}, $s{'country'}, $s{'average'}, $s{'board'}, $s{'age'}) = split /;/;
        if ($id == $s{'id'}) {
            close $fh;
            return \%s;
        }
    }
    close $fh;
    return {};
}

print "Enter the id of the surfer: ";
my $lookup_id = <STDIN>;
my $surfer = find_details($lookup_id);
if (%{ $surfer }) {
    print "ID:         $surfer->{'id'}\n";
    print "Name:       $surfer->{'name'}\n";
    print "Country:    $surfer->{'country'}\n";
    print "Average:    $surfer->{'average'}\n";
    print "Board type: $surfer->{'board'}\n";
    print "Age:        $surfer->{'age'}\n";
}