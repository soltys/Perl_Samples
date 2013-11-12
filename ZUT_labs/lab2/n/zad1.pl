#!/usr/bin/perl

use 5.012;
use warnings;
my %people;

while(<>){
    chomp;
    my($fname,$lname,$date) = split(/,/);
    my $key = $lname.$fname;   

    if(exists($people{$key})){
         $people{$key} .= ",".$date;
    }else{
        $people{$key} = $_;
    }
}

foreach(sort {$a gt $b} keys %people){
    my @data = split(/,/ , $people{$_});
    print("$data[1],$data[0]");
    foreach my $i(2 .. $#data)
    {
        print(",$data[$i]");
    }
    print("\n");
}

