use strict;
use warnings;

if ($#ARGV == -1) {
    system "git commit -a";
} else {
    my $message = join " ", @ARGV;
    system "git commit -am \"$message\"";
}
