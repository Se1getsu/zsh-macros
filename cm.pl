use strict;
use warnings;

if ($#ARGV == -1) {
    system "git commit";
} else {
    my $message = join " ", @ARGV;
    system "git commit -m \"$message\"";
}