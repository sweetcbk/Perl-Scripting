#!/usr/bin/perl -w

print "Enter First No :";
$a=<STDIN>;
print "Enter Second No :";
$b=<STDIN>;
print "Enter Operation :";
$op=<>;
chomp($op);

if ($op eq "+")
{
  $c=$a+$b;
} 
   elsif ($op eq '-')
   {
   $c=$a-$b;
   }
   elsif ($op eq '*')
   {
   $c=$a*$b;
   }
   elsif ($op eq '/')
   {
   $c=$a/$b;
   }

print "Result : of $op operation : $c\n";
