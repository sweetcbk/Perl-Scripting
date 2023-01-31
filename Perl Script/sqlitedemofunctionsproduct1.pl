#!/usr/bin/perl
#yum install perl-DBI
#yum install perl-DBD-SQLite

#connect to the database
use DBI;

my $driver   = "SQLite";
my $db_name = "mydb.db";
my $dbd = "DBI:$driver:dbname=$db_name";
 
# sqlite does not have a notion of username/password
my $username = "";
my $password = "";
 
# create and connect to a database.
# this will create a file named xmodulo.db
my $dbh = DBI->connect($dbd, $username, $password, { RaiseError => 1 })
                      or die $DBI::errstr;
print "Database opened successfully\n";

#insert 1 row into table
sub  addnewproduct{
my $sth = $dbh->prepare('insert into product values(?,?,?,?)')
                or die "Couldn't prepare statement: " . $dbh->errstr;
print "enter product id :";
$pid=<>;
print "enter product name :";
$pname=<>;
print "enter product price :";
$price=<>;
print "enter product Quantity :";
$qty=<>;
$sth->execute($pid,$pname,$price,$qty);

}

#display all rows
sub displayall{
my $sthall=$dbh->prepare("select * from product");
$sthall->execute();

while(@data=$sthall->fetchrow_array()){
            my $pid=$data[0];
            my $pname = $data[1];
            my $price = $data[2];
            my $qty = $data[2];
            print "\t$pid $pname $price $qty\n";
}

}

#delete row from the table
sub deleteproduct($){
  $pid=shift;
  my $sth = $dbh->prepare('delete from product where id=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
$sth->execute($pid);
}

sub displaybyid($){
   $pid=shift;
   my $sth = $dbh->prepare('SELECT * FROM product WHERE pid = ?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
              # Read input from the user
          
          $sth->execute($pid)             # Execute the query
            or die "Couldn't execute statement: " . $sth->errstr;

          # Read the matching records and print them out          
          while (@data = $sth->fetchrow_array()) {
		       $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$pid: $pname $price $qty\n";
			}
			if ($sth->rows == 0) {
            print "No names matched '$pid'.\n\n";
          }
   

}

sub updateproduct($$){
   $pid=shift;
   $price=shift;
   my $sth = $dbh->prepare('update product set price=? where pid=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;			

   $sth->execute($price,$pid);
}


do{
print "1. add new product\n";
print "2. delete product\n";
print "3. display all\n";
print "4. delete by pid\n";
print "5. update product\n";
print "6. exit";
print "choice:";
$choice=<>;
if ($choice==1){
   addnewproduct();
}
elsif($choice==2){
  print("enetr product pid for delete\n");
  $pid=<>;
  deleteproduct($pid);
}
elsif($choice==3){
    displayall();
}
elsif($choice==4){
  print("enetr product pid for display\n"); 
  $pid=<>;
  displaybyid($pid);
}elsif($choice==5){
  print("enetr product pid for update\n");
  $pid=<>;
  print("enetr product: price for update\n"); 
  $price=<>;
  updateproduct($pid,$price);
}else{
  print("Than you for using our software...");
}
}while($choice !=6);
