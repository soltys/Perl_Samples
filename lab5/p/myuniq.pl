#!/usr/bin/perl

use warnings;
my %allLines;
my @matches = grep { /-d/ } @ARGV;
my $onlyDups = 0;
if(scalar(@matches) > 0)
{
    $onlyDups = 1;
}
$last_line = "";
while(<STDIN>)
{
if($last_line ne $_ && !$onlyDups)
{
    print $_;
}

    if($last_line ne $_ && $onlyDups)
    {
        print $last_line;
    }


$last_line = $_;
}



