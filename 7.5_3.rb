puts "Start?"
startYear = gets.to_i
puts "End?"
endYear = gets.to_i
puts ""
puts "Schrikkeljaren:"

while startYear <= endYear
	if startYear % 400 == 0
		puts startYear
	elsif startYear % 100 == 0
	elsif startYear % 4 == 0
		puts startYear
	end
	startYear += 1
end