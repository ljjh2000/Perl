#!/usr/bin/perl

use strict;
use warnings;

#question 1
my @t = glob('~/.*');
#print (join("\n", @t));

#question 2
@t = grep {not -x $_} @t;
#print (join("\n", @t));

#question 3
@t = sort { -s $a <=> -s $b} @t;
print (join("\n", @t))."\n";

my @taille = map {-s $_} @t;
print (join("\n", @taille))."\n";









