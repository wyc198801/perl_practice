#!/usr/bin/perl -w
use strict;
use v5.14;

my $file = 'words.txt';
open (FH,'<',"$file") or die "can't open:$!";

print "check the word what you have:";
my $want = <STDIN>;
chomp($want);

# find the words in the file
while(<FH>) {
my @words;
    if ( /^$want/ ) {
        chomp;
	push @words, $_;
	say "\u@words";
    }
}
