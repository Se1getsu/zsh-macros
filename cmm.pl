use strict;
use warnings;

if ($#ARGV == -1) {
    system "if git diff --cached --quiet; then git commit --amend; else git commit --amend --no-edit; fi";
} else {
    my $message = join " ", @ARGV;
    system "git commit --amend -m \"$message\"";
}
