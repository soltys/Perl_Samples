use 5.012;
use warnings;
use autodie;


say "#$_" for 1 .. 10;

my @squares = map {$_ * $_} 1..10;
say for @squares;

my @pantry = ("eggs", "milk", "pancake mix");
say 'Brunch time!' if grep { /pancake mix/} @pantry;