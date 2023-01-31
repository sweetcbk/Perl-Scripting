$str = "The programming language Perl";
$str =~ /^(.+)(e|r)(.*)$/;
# matches,
# $1 = 'The programming language Pe'
# $2 = 'r'
# $3 = 'l‘
print "\n $1 \n $2 \n $3";
