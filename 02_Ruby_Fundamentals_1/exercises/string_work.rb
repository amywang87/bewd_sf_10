greeting = "Hey Girl, Hey"
name = "Amy"
last_name = "Wang"
bewd_class = "Back End Web Development      "

#Length determines the number of characters in a string
puts "#{name} has #{name.length} characters"

#strip removes white space
puts "I stripped this #{bewd_class.strip}"

#prepend adds characters to the beginning of a string
puts "I added The to this #{name.prepend("The  ")}"

#<< adds characters to the end of a string
name_2 = name << " is cool"
puts "I prepended is cool to this #{name_2}"

#chars creates an array of characters from the string
puts "This is my last name as an array #{last_name.chars}"
puts "this is of class #{last_name.chars.class}"

# Bang (!) changes the variable permanently. some methods are already destructive so this wont work
# "" doube quotes enable string interpolation
# you can construct a string with single quotes
# you can also do string.XXXX to create a string
