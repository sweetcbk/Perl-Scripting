#!/usr/bin/perl -w

print "enter a value :";
$a=<STDIN>;
print "enter b value :";
$b=<STDIN>;
print "enter c value :";
$c=<STDIN>;
if ($a>$b) 
{
            if ($a>$c)
            {
                        print " $a is largest number :";
            }
            else
            {
                        print " $c is largest number :";
            }
}
elsif ($b > $c)
{
       print " $b is largest number";
}
else
{
      print " $c is largest nnumber";
}

