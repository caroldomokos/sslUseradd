#!/usr/bin/env perl

use warnings;
use 5.18.0;

#### function definitions  ##################################################
# ---------------------------------------------------------------------------
sub read_to_array
{
my $file = shift;
open (my $handle, '<', $file) or die ('Cannot open file: $!');
chomp(my @lines = <$handle>);
close $handle;
return @lines
}

sub take_first # take the first key in the key_db
{
	my $word = shift;
        say $word;
}

#***********************
sub run # main function*
#***********************
{
say "Hello World";
#my @array = ("first", "second", "third");
my @array = read_to_array ("key_db");
take_first (@array);
}
#### end function definitions  ##############################################
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# BEGIN 'MAIN'
# ---------------------------------------------------------------------------

run ();

# ---------------------------------------------------------------------------
# END 'MAIN'
# ---------------------------------------------------------------------------
