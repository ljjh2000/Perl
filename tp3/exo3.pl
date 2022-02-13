#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

sub parse{
    my ($file) = @_;
    my $user = {};
    open(my $fd, '<', $file) or die("open $file: $!");
    while( defined( my $ligne = <$fd> ) ){
        chomp $ligne;
        my($login, $passwd, $uid, $gid, $info, $home, $shell) = split/:/, $ligne;
        $user -> {$login} = {
            "passwd" => $passwd,
            "uid" => $uid,
            "gid" => $gid,
            "info" => $info,
            "home" => $home,
            "shell" => $shell
        };
        
    }
    close($fd);
    return $user;

}


sub display1{
    my ($user) = @_;
    foreach my $login (keys %$user){
        print $login." { ";
        print "uid => ".$user->{$login}->{"uid"};
        print "gid => ".$user->{$login}->{"gid"};
        print "info => ".$user->{$login}->{"info"};
        print "home => ".$user->{$login}->{"home"};
        print "shell => ".$user->{$login}->{"shell"};
        print "passwd => ".$user->{$login}->{"passwd"}."}\n";

    }
}
sub display2{
    my ($user) = @_;
    foreach my $login (sort keys %$user){
        print $login." { ";
        print "uid => ".$user->{$login}->{"uid"};
        print "gid => ".$user->{$login}->{"gid"};
        print "info => ".$user->{$login}->{"info"};
        print "home => ".$user->{$login}->{"home"};
        print "shell => ".$user->{$login}->{"shell"};
        print "passwd => ".$user->{$login}->{"passwd"}."}\n";

    }
}


sub display3{
    my ($user) = @_;
    foreach my $login (sort {$user ->{$b}{"uid"} <=> $user ->{$a}{"uid"} or $a cmp $b} keys %$user){
        print $login." { ";
        print "uid => ".$user->{$login}->{"uid"};
        print "gid => ".$user->{$login}->{"gid"};
        print "info => ".$user->{$login}->{"info"};
        print "home => ".$user->{$login}->{"home"};
        print "shell => ".$user->{$login}->{"shell"};
        print "passwd => ".$user->{$login}->{"passwd"}."}\n";
    }
}
my $user = parse("passwd"); 
display2($user);
#display3($user);

