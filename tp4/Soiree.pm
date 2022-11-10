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

before entrer => sub {
    my ($self, $args) = @_;
    print "nouveau pote : $args\n";
};


after entrer => sub {
    my ($self, $args) = @_;
    if ($self->capacite < $self->nbPotes){
        $self->expulser();
        print "trop de personne $args est expulser\n";
    }
    else{
        print "Bienvenu $args\n";
    }
};

sub fete {
    my ($self) = @_;
    foreach my $p ($self->potes){
        print $p->nom."\n";
    }
}


1;