# Get a city name from the user 
print "Enter the cities you have visited last year... ";
print "<Ctrl>-D to Terminate \n";
@city = <STDIN>;
  
# Removes new line appended at 
# the end of every input
chomp @city;
  
# Print the city names
print "\nCities visited by you are: \n@city ";
