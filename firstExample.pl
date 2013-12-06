#!/usr/bin/perl

# ========================== HASH ============================ #
%my_hash = ();
$my_hash{"A"} = 1;
$my_hash{"B"} = 2;
$my_hash{"C"} = 3;
print %my_hash, "\n";
print $my_hash{"A"}, "\n";

delete($my_hash{"A"});
print %my_hash, "\n";

foreach $key (sort keys %my_hash) {
	print " KEY: ", $key , " - VALUE: " , $my_hash{$key}, "\n";
}