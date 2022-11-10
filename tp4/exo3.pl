#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use Disque;
use Data::Dumper;
use Anneau;

my $d = Disque->new(3, 4, 19);
print Dumper $d;
print $d->surface()." \n";
print $d."\n";
my $a = Anneau->new(3, 4, 19, 15);
print $a."\n";
print $a->surface()." \n";
