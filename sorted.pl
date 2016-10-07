#!/usr/bin/perl -w
use strict;
use v5.14;

my $file = 'words.txt';
open (FH,'<',"$file") or die "can't open:$!";

print "what do you want:?";
my $want = <STDIN>;
chomp($want);

while(<FH>) {
my @words;
    if ( /^$want/ ) {
        chomp; 
	push @words, $_;
	say "\u@words";
    }
}