use strict;
use warnings;

if ($#ARGV == -1) {
    die "Usage: cm <massage>\n";
} else {
    my $message = join " ", @ARGV;
    system "git commit -m \"$message\"";
}