#!/usr/bin/perl -w


$s="this is test, is there";
print "lenth of string" .length ($s)."\n";
print "lower case" .lc ($s)."\n";
print "upper case" .uc ($s)."\n";
print "reverse :" .reverse ($s)."\n";
print "sub string :" .substr ($s,3,9)."\n";
print "split string :" .split ( " ",$s);
print "reverse :" .reverse ($s)."\n";
@arr=split(" ",$s);
print "@arr";
print "lenth of arry".@arr;
print "@arr[0]";
print "**"x60;
$len=@arr;
for ($i=$len-1;$i>=0;$i--){
print @arr[$i]."\n";
}
