#!/usr/bin/perl -w

print "Enter Number :";
$num=<>;
chomp($num);
for($i=1;$i<=10;$i++){
$a=$num*$i;
print "$num * $i = $a\n";
}


@arr=1..10;
foreach $v (@arr){
$a=$num*$v;
print"$num * $v = $a\n";
}

foreach (@arr){
$a=$num*$_;
print"$num * $_ = $a\n";
}
