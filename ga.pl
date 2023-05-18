use strict;
use warnings;

if ($#ARGV == -1) {
    system "git add .";
} else {
    my $args = join " ", @ARGV;
    system "git add $args";
}