use 5.012;
use warnings;
use POSIX;

my $dir = ".";
my $long_format = 0;

die "Too many args" if scalar @ARGV>2;

foreach (@ARGV){
    if(/\-l/)
    {
	$long_format = 1;
	next;
    }
    
    $dir = $_;
}


my ($hdir);
opendir($hdir, $dir) or die "Directory $dir cannot be opened";
my @files = readdir($hdir) or die "Directory $dir cannot be read";

foreach(@files){
    next if /^\./;
    print;
    print " ";
    print -s; #size
    print " ";
    print POSIX::strftime("%Y-%m-%d %H:%M:%S", localtime( (stat )[9]));
    print " ";
    printf numToRWX(  ((stat)[2]) & 0777 );
    print "\n";
}


sub numToRWX{
    my $num = shift;
    my $text = "xwrxwrxwr";
    my $out = "";
    foreach my $char(split(//,$text)){
	$out .=  $num & 1 ? $char : "-";
	$num >>= 1;
    }
    return scalar reverse $out;
}
