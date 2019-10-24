#!/usr/bin/env perl

use warnings;
use strict;

# function definitions  
# ---------------------------------------------------------------------------
sub read_to_array # read the contents of a file to an array
{
my $file = shift;
open (my $handle, '<', $file) or die ('Cannot open file: $!');
chomp(my @lines = <$handle>);
close $handle;
return @lines
}

sub in_useQ # check if the key is in use
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

sub chose_key # select a key not in use and delete from db
{
my @key_proposed = read_to_array (shift); #/# can move to var
my @allocated = read_to_array (shift);
my $keyProposed;
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
		return ($keyProposed);
        }
}
}

sub update_dg # connect via REST API to F5 and update the data group
{
print ("Not doing much yet \n");
}


#***********************
sub run # main function*
#***********************
{
print ("Hello World \n");
my $chosen_key = chose_key ("key_db", "alloc_db");
print ("Chosen key is:$chosen_key \n");
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
