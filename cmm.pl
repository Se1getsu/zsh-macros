use strict;
use warnings;

if ($#ARGV == -1) {
    system "git diff --cached --quiet && {git commit --amend; true} || git commit --amend --no-edit";
} else {
    my $message = join " ", @ARGV;
    system "git commit --amend -m \"$message\"";
}
