#!/usr/bin/perl
use warnings;

my ($lines, $words, $chars) = (0,0,0);

$show_lines = 0;
$show_lines = 0;
$show_lines = 0;
foreach(@ARGV){
    $show_lines =~ /-l/; 
    $show_words =~ /-w/; 
    $show_chars =~ /-w/; 
}


while (<STDIN>) {
    $lines++;
    $chars += length($_);
    $words += scalar(split(/\s+/, $_));
}

if(!$show_lines || !$show_words || !$show_chars)
{
print("$lines\t$words\t$chars\n");
}
else
{
    if($show_lines)
    {
        print("\t$lines");
    }
    if($show_words)
    {
        print("\t$words");
    }
    if($show_chars)
    {
        print("\t$chars");
    }
    
    print("\n");
}

