#!/usr/bin/perl
use warnings;

while(<>){
	next unless m/Failed password/;
	chomp;

	if(m/user \b(\w+)\b from (.*?) port (\d+)/)
	{
		print "$1,$2,$3\n";
	}
}


