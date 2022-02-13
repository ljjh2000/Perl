#!/usr/bin/perl

use strict;
use warnings;

my $personne = {
    'Paul' => {
        'Tel' => "",
        'Adr' => "",
        "Enfants" =>  [ 'Julien', 'Laura', ],
    },

    'Anne' => { 'Tel' => '02.74.10.40',
        'Adr' => '5, bd Victor Hugo',
        'Enfants' => [ 'Sarah', 'Paul', 'Luc', ], },
    'Robert'=>{ 'Tel' => '06.94.28.88',
        'Adr' => '6, rue du Parc',
        'Enfants' => [ ], },
};


foreach my $nom (keys %$personne){
    print $nom;
    print " $personne->{$nom}->{Tel}";
    print " $personne->{$nom}->{Adr}\n";
    #print @{$personne->{$nom}->{"Enfants"}} +0; # affiche le nombre d'enfant
    print join(", ",@{$personne->{$nom}->{"Enfants"}})."\n";
}