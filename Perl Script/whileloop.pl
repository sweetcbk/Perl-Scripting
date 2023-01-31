#!/usr/bin/perl -w

print "Enter Number :";
$num=<>;
$s=0;
chomp($num);
while($num!=0){
$d=$num%10;                       #457  7
$num=$num/10;                     #45
$s=$s+$d;
}
print"Addition is : $s";
