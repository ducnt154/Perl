use Data::Dumper;

# Dao mang
my $array1 = [ 1, 2, 3, 4 ];
my $rev_array1 = reverse ( @$array1 ) ;
print 'array: ', @$array1, "\n";
print 'rev array: ', @$rev_array1, "\n";

# Pop 1 phan tu khoi mang
my @array2 = ( 1, 2, 3, 4 );
my $shift_ele = shift @array2;
print 'shift element: ', $shift_ele, "\n";
print 'array: ', @array2, "\n";

# sort 1 mang
my $array3 = [ 1, 3, 5, 2 ];
@$array3 = sort @$array3;
print 'sort tang dan: ', @$array3, "\n";

@$array3 = sort { $b <=> $a } @$array3;
print 'sort giam dan: ', @$array3, "\n";
