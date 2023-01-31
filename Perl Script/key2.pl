sub displaybooks($$) {
$v=shift @_;
foreach (keys %books){
if($books{$_}>$v) {
 print $_ . "---> : ".$books{$_};

    }
  }
}

%books=("java",234,"c","345", "python",200);
%courses=("java"=>500, ".net"=>100, "python"=>250);
$,=",";
print "enter value : ";
$v=<>;
displaybooks($v,30);



