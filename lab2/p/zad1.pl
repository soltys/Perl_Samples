#!/usr/bin/perl

use 5.012;
use warnings;
my %people;
while(<>){
    chomp;
    my($fname,$lname,$grade) = split(/,/);
    my $key = $lname.$fname;

    if(exists($people{$key})){
        my(@old_data) =  split(/,/,$people{$key});
        $old_data[3] += 1;
        $old_data[2] += $grade;
        $people{$key} = join(",", @old_data);
    }else{
        $people{$key} = $_.",1";
    }

}

foreach(sort {$a gt $b} keys %people){
    my($fname,$lname,$grade,$number) = split(/,/ , $people{$_});
    printf("$lname,$fname,%.1f\n",$grade/$number);
}

