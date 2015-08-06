require 'pry'

def my_reverse(string)
  char = string.downcase.chars #transform into array of characters
  word = "" #create an empty string for new word
  until char.length == 0
    word << char.pop #removes last element in array and returns letter
  end
  word #this is what will be returned because it is the last line
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase
    "YES! Palindrome"
  else
    "Aww. Not quite a palindrome"
  end
end

puts "Give me word \n"
word = gets.strip
puts is_palindrome?("racecar")
