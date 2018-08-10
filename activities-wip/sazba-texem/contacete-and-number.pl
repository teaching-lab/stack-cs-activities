#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

binmode(STDIN,  "utf8");
binmode(STDOUT, "utf8");
binmode(STDERR, "utf8");


#
# Global
#
my $used_numbers = {};
my $numbers_mapping = {};


#
# Subprograms
#
sub get_random {
    my $max = 998;
    my $rnd = int(rand($max));
    while (defined($used_numbers->{$rnd})) {
        $rnd = int(rand($max));
    }
    $rnd++; # Nechceme 0..$max ale 1..$max+1
    $used_numbers->{$rnd}++;
    return $rnd;
}


#
# Main
#
foreach my $source (@ARGV) {
    my $enc = $1 if ($source =~ /^.*-([^-]+)\.tex\z/i);
    die unless ($enc);

    print("\n%%%%% $source ($enc) %%%%%\n\n");

    open(SOURCE, "<:encoding($enc)", "$source")
        or die "open($source) failed: $!";

    my $rnd = get_random();
    while (my $l = <SOURCE>) {
        chomp $l;
        if ($l =~ /^%§$/) {
            $rnd = get_random();
            printf("%s\n", '–'x63);
            next;
        }
        printf("%3s   %s\n", $rnd, $l);
        $rnd = '';
    }

    close(SOURCE);
}
