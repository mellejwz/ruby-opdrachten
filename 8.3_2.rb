contents = ['Table of Contents', 'Chapter 1: Getting Started','page 1', 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13', 'Chapter 4: Variables and Assignment', 'page 17']
i = 0
test = 80
puts (contents[0].center(test, '='))

while i < contents.length-1
	puts
	puts (contents[i+=1].ljust(test*0.9, '.')) + (contents[i+=1].rjust(test*0.1, '.'))
end