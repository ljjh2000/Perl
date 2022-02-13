#!/usr/bin/perl

use strict;
use warnings;


open( my $fd, '<' ,'passwd' ) or die( "open: $!" );
while( defined( my $ligne = <$fd> ) ) {
    chomp $ligne; # Supprime la fin de ligne
    #if($ligne =~ m/^jc:/){print "$ligne\n";}
    #if($ligne !~ m/bash$/){print "$ligne\n";}
    #$ligne =~ s:/home/:/mnt/home/:g;
    #print $ligne."\n";
    #$ligne =~ s/:.*?:/:/;
    #print $ligne."\n";
    #$ligne =~ s/(.+?):(.+?):/$2:$1:/;
    #print "$ligne\n";
    $ligne =~ s/((?:.*?:){2})(\d+?):(\d+?):/$1$3:$2:/;
    print "$ligne\n";

}
close( $fd );