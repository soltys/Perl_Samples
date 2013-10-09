use warnings;
use strict;

foreach my $arg(@ARGV)
{	
	my $tempFileName;
	$tempFileName = $arg . ".new";
	open my $in, "<", $arg or die $!;
	open my $out, ">", $tempFileName or die $!;
	print $out "use warnings;\n";
	print $out "use strict;\n";
	while(<$in>)
	{
		print $out $_;
	}	
	close($out);
	close($in);
	unlink($arg);
	rename($tempFileName,$arg);
}

