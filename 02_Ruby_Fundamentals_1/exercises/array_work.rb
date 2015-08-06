#find the position
# array[position]. Array starts with 0.
# or array.first
# array.length returns the number of things in the array
# array.push("item") will add item to the array
# array.last will return the last thing
# array[-1] returns the last thing

#size
#push or <<
#pop
#unshift
#shift
#uniq
#uniq!
#include?

#size tells you how many
#length and size are the same
#push adds things to the array, but position is at end
# << only adds one thing at a time, use .push otherwise
#pop gets rid of the last thing in an array
#unshift adds stuff to the beg of the array
#shift removes the first thing from the array. shift is opposite of pop
#uniq! adds only unique elements to an array
#include - does it include a specific element?

rock_stars = ["beyonce", "metallica", "kanye", "jimmy"]
puts "there are #{rock_stars.size} elements in rock_stars"
puts "I added katy to rock_stars and it looks like #{rock_stars.push("katy")}"
puts "#{rock_stars.pop} got deleted"
puts "#{rock_stars.unshift("test")}"
puts "#{rock_stars.shift}"
puts "#{rock_stars.push("kanye")}"
puts "#{rock_stars.uniq}"
