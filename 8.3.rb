puts 'Type some words and press enter after each one'
array = []
words = ' '
while words != ''
	words = gets.chomp
	array.push words
end

puts array.sort