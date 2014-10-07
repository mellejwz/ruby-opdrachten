puts "What's your first name?"
firstName = gets.chomp
puts "What's your middle name?"
middleName = gets.chomp
puts "What's your last name?"
lastName = gets.chomp

puts "Hello " + firstName + " " + middleName + " " + lastName

puts "And what's your favourite number?"
favNumber = gets.to_i
betterNumber = favNumber+1
puts "I've got a better number for you: " + betterNumber.to_s