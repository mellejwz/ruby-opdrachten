#sort words without recursion

#let's first clean up the terminal/cmd
system('clear')
system('cls')

#set default value for the user's input
word = nil

#define the arrays we'll use
words_unsorted = []
words_sorted = []

#show some instructions
puts 'Type some words and press enter after each one,'
puts 'press enter without entering a word to continue.'
puts

#repeat until you press enter without entering a word
while word != ''
	word = gets.chomp
	#save entered word into an unsorted array
	words_unsorted.push word
end
#remove the empty input from the unsorted array
words_unsorted.delete('')

#repeat until the unsorted array is empty
while words_unsorted.length>0
	#save the word that comes first in the alphabet into the sorted array
	words_sorted.push words_unsorted.min
	#delete the word from the unsorted array
	words_unsorted.delete(words_unsorted.min)
end

#show the alphabetically sorted words
puts words_sorted