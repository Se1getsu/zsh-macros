use strict;
use warnings;

my $fg = "\x1b[38;5;";
my $bg = "\x1b[48;5;";
my $rs = "\x1b[0m";

sub color {
    my ($code) = @_;
    my $number = sprintf("%3d", $code);
    return $bg . $code . "m " . $number . $rs . $fg . $code . "m " . $number . $rs . " ";
}

foreach my $n (0..255) {
    print color($n);
    print "\n" if (($n + 1) % 8 == 0);
}
print "\n";
