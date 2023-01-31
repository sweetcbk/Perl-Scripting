#!/usr/bin/perl -w

do{
$flag=1;
print "Enter a Number :";
$num=<>;
print"------------------------------------------\n";
@arr=2..$num-1;
foreach $i(@arr){
if ($num % $i==0){
$flag=0;
last;
}
}

if($flag==1){
print"Prime Number :\n";
print"------------------------------------------\n";
}
else {
print"Not Prime number :\n";
print"-------------------------------------------\n";
}
print"Continue(y/n)";
$ans=<>;
print"------------------------------------------\n";
chomp($ans);
}while($ans eq 'y');
