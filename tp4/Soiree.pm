package Soiree;

use strict;
use warnings;
use Moose;
use Personne;

has capacite => (is =>'ro', isa=>'Int');
has potes =>(is=>'rw', isa=>'ArrayRef[Personne]',
    default =>sub{[]},
    auto_deref =>1,
    traits => ['Array'],
    handles => {entrer => 'push',
        expulser => 'pop',
        nbPotes => 'count',
    },

);


sub fete {
    my ($self) = @_;
    foreach my $p ($self->potes){
        print $p->nom."\n";
    }
}

1;