#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use Personne;
use Soiree;

my $p = Personne->new(nom => "moi");
print $p->{nom};
my $s = Soiree->new(capacite => 4);



