#!/usr/bin/perl

use warnings;
$html_code = "";
while(<STDIN>)
{
    $html_code .= $_;
}

$html_code =~ s|<.+?>||g;

print $html_code;
