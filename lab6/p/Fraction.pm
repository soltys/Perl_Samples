package Fraction;

sub new{
    my $class = shift;
    my $self = {
        _numerator => shift,
        _denominator => shift,
    };
    
    bless $self, $class;
    return $self;
}

sub setNumerator{
    my ($self, $numerator) = @_;
    $self->{_numerator} = $numerator if defined($numerator);
    return $self->{_numerator};
}

sub getNumerator{
    my ($self) = @_;
    return $self->{_numerator};
}

sub setDenominator{
    my ($self, $denominator) = @_;
    $self->{_denominator} = $denominator if defined($denominator);
    return $self->{_denominator};
}

sub getDenominator{
    my ($self) = @_;
    return $self->{_denominator};
}

sub getDecimalValue{
    my ($self) = @_;
    return $self->{_numerator}/$self->{_denominator};
}

sub set{
    my($self) = shift;
    my($newtop) = shift;
    my($newbottom) = shift;

    $self->{_numerator} = $newtop;
    $self->{_denominator} = $newbottom;
}

sub add{
    my ($self,$frac) = @_;
    my($top) = $self->{_numerator};
    my($otop) = $frac->{_numerator};
    my($bot) = $self->{_denominator};
    my($obot) = $frac->{_denominator}; 
    $self->set($top*$obot + $otop * $bot, $bot * $obot);
}

sub sub{
    my ($self,$frac) = @_;
    my($top) = $self->{_numerator};
    my($otop) = $frac->{_numerator};
    my($bot) = $self->{_denominator};
    my($obot) = $frac->{_denominator}; 
    $self->set($top*$obot - $otop * $bot, $bot * $obot);
}

sub mul{
    my ($self,$frac) = @_;
    my($top) = $self->{_numerator};
    my($otop) = $frac->{_numerator};
    my($bot) = $self->{_denominator};
    my($obot) = $frac->{_denominator}; 
    $self->set($top* $otop,  $bot * $obot);
}

sub div{
    my ($self,$frac) = @_;
    my($top) = $self->{_numerator};
    my($otop) = $frac->{_numerator};
    my($bot) = $self->{_denominator};
    my($obot) = $frac->{_denominator}; 
    $self->set($top* $obot,  $bot * $otop);
}

sub toString {
   my($self) = shift;
   my($top) = $self->{_numerator};
   my($bot) = $self->{_denominator};
   return "$top / $bot";
} 

1;
