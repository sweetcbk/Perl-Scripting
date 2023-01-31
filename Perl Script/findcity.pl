#!/usr/bin/perl -w

@city=('pune', 'mumbai','patna','kanpur');
$flag=0;
$pos=0;
print "Enter city name :";
$cname=<>;
chomp($city);
foreach $v (@city) {
if ($v eq $cname) {
$flag=1;
last;
}
$pos++;
}
if ($flag==1) {
print "city $cname found at positio $pos";

}
else

   print "City not found : $cname\n";
}
