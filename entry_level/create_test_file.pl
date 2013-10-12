use warnings;
use strict;

foreach my $arg(@ARGV)
{		
	open my $out, ">", $arg or die $!;
	print $out "use Modern::Perl;\n";
	print $out "use Test::More;\n";
	print $out "\n";
	print $out "#test code here\n"
	print $out "\n"
	print $out "done_testing();\n";
	
	close($out);	
}

