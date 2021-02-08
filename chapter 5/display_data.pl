use strict;
use warnings;

use DBI;

sub db_handle {
    my $db_file = shift
        or die "db_handle() requieres a database name";
    no warnings 'once';
    return DBI->connect(
        "dbi:SQLite:dbname=$db_file",
        "", # no username required
        "", # no password required
        { RaiseError => 1, PrintError => 0, AutoCommit => 1 },
    ) || die $DBH::errstr;
}

sub find_details {
    my $id = shift;
    my $dbh = db_handle('surfersDB.sdb');
    my $sth = $dbh->prepare("SELECT * FROM SURFERS");

    $sth->execute;
    while ( my $row = $sth->fetchrow_hashref ) {
        if ($row->{'id'} == $id) {
            return {
                id => $row->{'id'},
                name => $row->{'name'},
                country => $row->{'country'},
                average => $row->{'average'},
                board => $row->{'board'},
                age => $row->{'age'},
            };
        }
    }
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