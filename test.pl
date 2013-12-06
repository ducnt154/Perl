use Data::Dumper;

############ PASS ARRAY AND MAP INTO FUNCTION ###############
sub test{
	my ($array, $hash ) = @_;
	print "array: " , Dumper($array) , " - hash: " , Dumper($hash);
	foreach my $v (@$array) {
		print "> ", $v;
	}
#	my $size = @$array;
#	for $index ( 0..$size ) {
#		print ">>> ", $index , " ", @$array[$index];
#	}
}

my $hash1 = +{
	message => "abc",
	type => 1,
	time => 100,
};

my $my_array = [];
push(@$my_array, 10);
push(@$my_array, 7);

test($my_array, $hash1);

#################### ARRAY -> MAP #######################
# khai bao array
my $raid_boss_ids = [1, 2, 3];

# chuyen "array" thanh "map"
my %boss_hash = map { $_ => 0 } @$raid_boss_ids;

my $boss_hash_ref = \%boss_hash;

# duyet array
for my $rbi (@$raid_boss_ids) {
        $boss_hash_ref->{$rbi}++;
}

print "\n boss_hash: ", %boss_hash;
print "\n boss_hash_ref: ", Dumper($boss_hash_ref);

############## MAP #################
my $hash1 = +{
	message => "abc",
	type => 1,
	time => 100,
};
 		# add element in hash1
		$hash1->{bonus} = "yes";
		
print Dumper($hash1);
print "value1: ", $hash1->{message}, "\n";

my $hash2 = {
	hash => $hash1,
};
print Dumper($hash2);
print "value2: ", $hash2->{hash}->{message};

my %hash2 = (key => "hello");
		# add element in hash2
		$hash2{message} = "world";
print "\n hash2: ",$hash2{key};
print "\n hash2: ",$hash2{message};

############## GREP MAP ###########
@database = ( 
    { name      => "Wild Ginger", 
      city      => "Seattle",
      cuisine   => "Asian Thai Chinese Japanese",
      expense   => 4, 
      music     => "\0", 
      meals     => "lunch dinner",
      view      => "\0", 
      smoking   => "\0", 
      parking   => "validated",
      rating    => 4, 
      payment   => "MC VISA AMEX", 
    },
#    { ... },  etc.
);

sub findRes {
	my ($database, $query) = @_;
	# get ra tap records gom thanh phan name, city tu database co city la dc yeu cau
	my @records = 
		map {
			{
				name => $_->{name},
				city => $_->{city},
			}
		} grep {
		    $_->{city} =~ $query->{city}
		} @$database;
	return $records[0];
}

%query = (city => 'Seattle');
$res = findRes(\@database, \%query);
print "\nRESULT1: ", $res;
print "\nRESULT2: ", $res->{city};
print "\nRESULT3: ", Dumper($res);

$res += {
	type => 1,
};
print "\nRESULT4: ", Dumper($res);
