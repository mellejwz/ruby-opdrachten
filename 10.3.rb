system('clear')
system('cls')

unsorted = []

def save_words unsorted
	word = gets.chomp
	if word != ''
		unsorted.push word
		save_words unsorted
	else
		puts wrapper unsorted
	end
end

def wrapper unsorted
	recursive_sort unsorted, []
end

def recursive_sort unsorted, shuffled
	random = rand(unsorted.length)
	shuffled.push unsorted[random]
	unsorted.delete(unsorted[random])
	if unsorted.length==0
		return shuffled
	else recursive_sort unsorted, shuffled
	end
end

puts 'Type some words and press enter after each one,'
puts 'press enter without entering a word to continue.'
puts

save_words unsorted