sub greet{
@names=@_;
foreach(@names){
print "hello".$_."\n";
}
}
sub factorial ($){
$n=shift;
$f=1;
foreach(1..$n){
$f=$f*$_;
}
return $f;
}

greet("deepa","ashu");
greet("raja","mohan","sohan");
print "\n".factorial(5)."\n";
print "\n".factorial(4)."\n";

