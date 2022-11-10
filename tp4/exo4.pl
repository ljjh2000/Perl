#!/usr/bin/perl

use strict;
use warnings;
use lib '.';
use Personne;
use Soiree;

my $p = Personne->new(nom => "moi");

my $s = Soiree->new(capacite => 4);
my $c = Personne->new(nom => "toi");
my $a = Personne->new(nom => "lui");
my $z = Personne->new(nom => "elle");
my $d = Personne->new(nom => "il");
$s->entrer($p);
$s->entrer($c);
$s->entrer($a);
$s->entrer($z);
$s->entrer($d);

# $s->fete();



