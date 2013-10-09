#
# Foreach nie zmienia wartości elementu wewnątrz pętli
#

@arr = (1,2,3,4,5,6,7,8);

foreach $el(@arr)
{
	$el--;
	$copyel = $el;
	$copyel--;
	print "original:". $el . " copy:" . $copyel . "\n";
}

foreach $el(@arr)
{
	print $el . "\n";
}