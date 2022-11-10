package Personne;

use strict;
use warnings;
use Moose;

use overload '""' => \&my_string;

has nom => (is =>'ro', isa =>'Str');

sub my_string{
 my($self) = @_;
 return $self->nom
}

1;
