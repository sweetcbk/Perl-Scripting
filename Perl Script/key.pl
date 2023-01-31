%books=("java",234,"c","345", "python",200);
%cource=("java"=>500, ".net"=>100, "python"=>250);
$,=",";


print "enter value";
$v=<>;
displaybooks(250)












@k=keys %books;
print @k;
@v=values %books;
print @v;
print $books{"java"};

foreach ($keys %books){
if($books{$_}>210) {
print $_ . "--->".$books{$_}

}
}

while (($key,$value)=each(%books)) {
if ($value>250){
print ($key."--->".$value)
}
}

