package Anneau;

use strict;
use warnings;
use parent qw(Disque);
use Math::Trig;
use overload '""' => \&dump;

sub new{
    my ($class, $x, $y, $rayon, $ri) = @_;
    my $self = $class->SUPER::new($x, $y, $rayon);
    $self->{RI} = $ri//0;
    return bless ($self , $class );
}

sub surface{
    my ($self) = @_;
    return $self->SUPER::surface() - (pi * $self->{RI} * $self->{RI});
}

sub dump{
    my ($self) = @_;
    return $self->SUPER::dump().", $self->{RI}";
}

1;