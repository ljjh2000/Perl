#!/usr/bin/perl

use strict;
use warnings;

my %uid;
open( my $fd, '<' ,'passwd' ) or die( "open: $!" );
while( defined( my $ligne = <$fd> ) ) {
    chomp $ligne; # Supprime la fin de ligne
    # Maintenant $ligne contient chacune des lignes du fichier
    my($login, undef, $uid) = split /:/, $ligne;
    $uid{$login} = $uid;
}
close( $fd );

foreach my $log (keys %uid){
    print "$log : $uid{$log}\n";
}


foreach my $log (sort { $uid{$a} <=> $uid{$b} or $a cmp $b} keys %uid){
    print "$log : $uid{$log}\n";
}



