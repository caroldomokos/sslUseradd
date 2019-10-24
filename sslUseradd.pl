#!/usr/bin/env perl

use warnings;
use 5.18.0;

# function definitions  
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
        return ($word);
}

sub in_useQ 
{
	my $key_proposed = shift;
	my @allocated = read_to_array ("alloc_db");#/# can move to var
	my $in_use = 0;
	foreach $key (@allocated) 
	{
		if ($key = $key_proposed)
		{
		my $in_use = 1;
		printf ("Key is already in use!");
		break;
		}
	}
	return ($in_use);
}
#***********************
sub run # main function*
#***********************
{
say "Hello World";
my @key_proposed = read_to_array ("key_db"); #/# can move to var
my $keyProposed = take_first (@key_proposed);

}
# end function definitions 
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# BEGIN 'MAIN'
# ---------------------------------------------------------------------------

run ();

# ---------------------------------------------------------------------------
# END 'MAIN'
# ---------------------------------------------------------------------------
