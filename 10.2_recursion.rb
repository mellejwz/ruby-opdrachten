#sort words with recursion

#let's first clean up the terminal/cmd
system('clear')
system('cls')

#define the unsorted array for the entered words
unsorted = []

def save_words unsorted
	word = gets.chomp
	if word != ''
		#if user input is not empty save the entered word in the unsorted array and repeat the method
		unsorted.push word
		save_words unsorted
	else
		#else run the wrapper method and show the result
		puts wrapper unsorted
	end
end

def wrapper unsorted
	#run the actual sorting method on the unsorted array and a new empty array 
	recursive_sort unsorted, []
end

def recursive_sort unsorted, sorted
	#push the word that comes first in the alphabet from the unsorted array to end of the empty array (sorted)
	sorted.push unsorted.min
	#prevent already sorted words to be processed again by deleting them from the unsorted array
	unsorted.delete(unsorted.min)
	if unsorted.length==0
		#if the unsorted array is empty return the sorted array
		return sorted
		#else repeat the sorting method with the unsorted and sorted arrays
	else recursive_sort unsorted, sorted
	end
end

#show some instructions
puts 'Type some words and press enter after each one,'
puts 'press enter without entering a word to continue.'
puts

#start the input
save_words unsorted