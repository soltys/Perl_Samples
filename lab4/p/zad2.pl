#!/usr/bin/perl
use warnings;

sub GenerateBase
{
    my $number = shift;
    my $base = shift;

    $base = 62 if $base > 62;
    my @nums = (0..9,'a'..'z','A'..'Z')[0..$base-1];
    my $index = 0;
    my %nums = map {$_,$index++} @nums;    

    return $nums[0] if $number == 0;
    my $rep = ""; 
    while( $number > 0 )
    {
    	$rep = $nums[$number % $base] . $rep;
    	$number = int( $number / $base );
    }
    return $rep;
    
}


sub foo{
	my $num_params = @_;
	($a,$b) = @_;
	if($num_params < 1){
		return undef;
	}
	
	if($num_params == 1){
		return GenerateBase($a,16);
	}
	if($num_params == 2){
		return GenerateBase($a,$b);
	}

}

print "f" eq foo(15); 
print "\n";
print "1000" eq foo(8,2);
print "\n";
