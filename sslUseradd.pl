#!/usr/bin/env perl

use warnings;
use strict;

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

sub in_useQ 
{
	my $key_proposed = shift;
	my @allocated = shift;
	my $in_use = 0;
	my $key;
	foreach $key (@allocated) 
	{
		if ($key eq $key_proposed)
		{
		my $in_use = 1;
		print ("Key is already in use! \n");
		}
	}
	return ($in_use);
}
#***********************
sub run # main function*
#***********************
{
print "Hello World \n";
my @key_proposed = read_to_array ("key_db"); #/# can move to var
my @allocated = read_to_array ("alloc_db");
my $count = 1;
while ($count)
{
	my $keyProposed = shift @key_proposed;
	if (in_useQ ($keyProposed, @allocated))
	{
		print ("Removing key \n");
	}
	else 
	{
		print ("Key is available \n");
		$count =0;
		print (" the key ongoing is $keyProposed \n");
	}
}
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
