#!/usr/bin/perl

use 5.012;
use warnings;
my %log;
while(<>){
    chomp;
    my @data = split(/,/);
    if  (scalar(@data) == 3){
    	my($who,$ip,$port) = @data;
	$log{$ip}++;
    }
}

foreach(keys %log){
say $_ . "\t" . $log{$_};
}

