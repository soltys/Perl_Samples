use warnings;
use strict;

foreach my $arg(@ARGV)
{		
	open my $out, ">", $arg or die $!;
	print $out "use 5.012;\n";
	print $out "use warnings;\n";
	print $out "use autodie;\n";
	
	close($out);	
}

