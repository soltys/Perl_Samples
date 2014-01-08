#!/usr/bin/perl
use warnings;

sub print_ref{
$ref = shift;
$ref_type = ref $ref;
if($ref_type eq "SCALAR"){
    print $$ref;
}
if($ref_type eq "ARRAY"){
    print @$ref;
}
if($ref_type eq "HASH"){
    my %ct = %{ $ref };
    print %ct;
}
if($ref_type eq "REF"){
    print_ref($$ref);
}

}
