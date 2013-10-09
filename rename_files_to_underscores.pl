use 5.012;
use warnings;
use autodie;


while(<*.*>){
	my $old_name = $_;
	s/\-/_/g;
	
	rename($old_name,$_);
	say "Old name $old_name\tNew name $_";
}