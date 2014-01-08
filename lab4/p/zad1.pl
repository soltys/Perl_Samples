use warnings;

sub sort_by_length{
	return reverse sort {length($a) <=> length($b)} @_;
}


my @input = qw/mike tim johnny me/;
my @output = sort_by_length(@input);
foreach(@output){
	print $_ . "\n";
}

my @should_be = qw/johnny mike tim me/;

for(0..$#input){
	die "Not equals" if $output[$_] ne $should_be[$_];
}
