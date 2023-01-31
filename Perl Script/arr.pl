#!/usr/bin/perl -w

push @arr,"x";
$,=":";
print @arr;
pop @arr;
print @arr;
unshift @arr, "zz";
print @arr;
shift @arr;
print "\n";
delete(@arr[3]);
print @arr;
#print "reverse by word " .reverse (@arr);
splice (@arr,1,2, "x","y","xz","p","q");
print "\n";
print @arr;
$arr[3]= "check";
print "\n";
print @arr;
if (@arr){
print "arry exists";
}
