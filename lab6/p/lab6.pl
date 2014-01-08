#!/usr/bin/perl
use warnings;
use Fraction;

$frac = new Fraction(1,3);
$frac2 = new Fraction(1,3);
print $frac->getDecimalValue();
$frac->add($frac2);
print $frac->toString();
print "\n"
