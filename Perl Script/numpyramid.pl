print "Enter no. of rows: ";
$rows=<>;
@arr=1..$rows;
for $v(@arr)
{
	@arr1=1..$v;
	foreach(@arr1)
	{
		print "$_ ";
	}
	print "\n";
}
