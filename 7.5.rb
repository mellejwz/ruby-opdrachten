(1..99).to_a.reverse.each do |bottle|
	if bottle > 1 
		puts "#{bottle} bottles of beer on the wall, #{bottle} bottles of beer."
		suffix = bottle > 2 ? "#{bottle -1} bottles of beer on the wall" : "1 bottle of beer on the wall"
	elsif bottle == 1
		puts "1 bottle of beer on the wall, 1 bottle of beer."
		suffix = "no more beer on the wall!"
	end

	puts "Take one down, pass it around #{suffix}"
end