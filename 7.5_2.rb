bye = 0
response = nil
while bye < 3
	puts "Hey Sonny boy! What a lovely day isn't it?"
	response = gets.chomp
	if response == "BYE"
		bye = (bye+1)

	elsif response != response.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		bye = 0

	elsif response == response.upcase
		puts "NO, NOT SINCE " + (1930+rand(20).to_i).to_s + "!"
		bye = 0
	end
end