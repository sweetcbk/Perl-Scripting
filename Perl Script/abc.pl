#!/usr/bin/perl -w
print ("enter age\n");
$age=<>;
print ("enter amount\n");
$amt=<>;
if ($age<18){
print "no loan is allowed");
}
elsif ($age<30 && $amt<50000){
print ("loan is allowed for 3 years");
}
elsif ($age<40 && $amt<60000){
print ("loan is allowed for 6 years");
}
elsif{
print ("loan is allowed for 8 years");
}
