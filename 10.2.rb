system('clear')
system('cls')

word = nil

words_unsorted = []
words_sorted = []

puts 'Type some words and press enter after each one,'
puts 'press enter without entering a word to continue.'
puts

while word != ''
	word = gets.chomp
	words_unsorted.push word
end
words_unsorted.delete('')

while words_unsorted.length>0
	words_sorted.push words_unsorted.min
	words_unsorted.delete(words_unsorted.min)
end

puts words_sorted