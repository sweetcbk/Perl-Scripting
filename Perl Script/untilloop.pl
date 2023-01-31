#!/usr/bin/perl -w

do {
print "Enter a number :";
$num=<>;
print "you Entred : $num";
print "Continue(y/n)?";
$ans=<>;
chomp($ans);
}until($ans ne "y");


print "Enter count";
$count=<>;
$n=1;
until($n>$count){
print $n;
$n++;
}
