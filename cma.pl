use strict;
use warnings;

if ($#ARGV == -1) {
    system "git add . && git commit";
} else {
    my $message = join " ", @ARGV;
    system "git add . && git commit -m \"$message\"";
}
