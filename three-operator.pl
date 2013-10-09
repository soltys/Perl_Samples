$ok = true;

$a = 1;
$b = 2;

($ok ? $a : $b) = 42;
print "$a: " . $a . " $b: ". $b;
