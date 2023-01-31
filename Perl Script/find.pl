#!/usr/bin/perl -w

print "Enter city name :";
$usrcity=<>;
chomp($usrcity);
foreach $v (@usrcity) {
if ($v eq $city) {
$flag=1;
last;

@city=('pune', 'mumbai','patna','kanpur');
do {
   print "City Avalable : @usrcity\n";
}
until($usrcity ne 'y');
