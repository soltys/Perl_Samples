#!/usr/bin/perl
use warnings;
my $good_emails = 0;
while(<>){
chomp;

if(/\b[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\b/i)
{
	$good_emails++;
}
}

print "$good_emails\n";
