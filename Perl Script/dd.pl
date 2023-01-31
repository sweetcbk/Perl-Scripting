$s="this is home"
if
($s=~/^(\w+)\s(\w+)\s(\w+)$/)
{
print "found";
print "$1."\n".$2."\n".$3;
}
else {
print "not found";
}
