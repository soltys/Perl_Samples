use 5.012;
use warnings;
use POSIX;

my $dir = ".";
my $long_format = 0;

die "Too many args" if scalar @ARGV>2;

foreach (@ARGV){
    if(/^\-l/){
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
    my $name = $_;
    my $full_name = $dir . "/" . $name;
    my $size = ((stat $full_name)[7]);
    my $date = POSIX::strftime("%Y-%m-%d %H:%M:%S", localtime( (stat $full_name )[9]));
    my $perm =  numToRWX(  ((stat $full_name)[2]) & 0777 );
    format STDOUT =
@<<<<<<<< @#### @<<<<<<<<< @<<<<<<<<<<<<<<<<<<<
$name,  $size,  $date,     $perm
.
    write ;
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

