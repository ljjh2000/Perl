package Disque;

use strict;
use warnings;
use Math::Trig;
use overload '""' => \&dump;


sub new{
    my ($class, $x, $y, $rayon) = @_;
    my $self = {};
    $self -> {X} = $x//0;
    $self -> {Y} = $y//0;
    $self -> {RAYON} = $rayon//1;

    bless($self, $class);
    return $self;
}

sub surface{
    my ($self) = @_;
    return pi * $self->{RAYON} * $self->{RAYON};
}

sub dump{
    my ($self) = @_;
    return ref($self).": $self->{X}, $self->{Y}, $self->{RAYON}";
}

1;

