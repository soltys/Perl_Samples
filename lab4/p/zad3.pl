#!/usr/bin/perl
use warnings;

sub myshift{
    splice(@_,0,1)
}
sub myunshift{
    
    splice(@a,0,0,$x,$y)
}

 
unshift(@a,$x,$y) 
