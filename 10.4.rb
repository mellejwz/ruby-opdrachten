def english_number user_input
	if user_input <= 0
		puts 'Please choose a number greater than 0'
		input
	end
	if user_input >= 1000
		puts 'Please choose a number less than 1000'
		input
	end

	left = user_input

	hundreds = left/100
	tens = (left-(hundreds*100))/10
	ones = (left-(hundreds*100))-(tens*10)
	special_cases = left-(hundreds*100)

	if special_cases<=10 || special_cases>=20
		special_case = false
	else special_case = true
	end

	english_numbers = []

	english_hundreds = case hundreds
		when 1 then 'onehundred'
		when 2 then 'twohundred'
		when 3 then 'threehundred'
		when 4 then 'fourhundred'
		when 5 then 'fivehundred'
		when 6 then 'sixhundred'
		when 7 then 'sevenhundred'
		when 8 then 'eighthundred'
		when 9 then 'ninehundred'
	end

	english_tens = case tens
		when 1 then 'ten'
		when 2 then 'twenty'
		when 3 then 'thirty'
		when 4 then 'fourty'
		when 5 then 'fifty'
		when 6 then 'sixty'
		when 7 then 'seventy'
		when 8 then 'eighty'
		when 9 then 'ninety'
	end

	english_ones = case ones
		when 1 then 'one'
		when 2 then 'two'
		when 3 then 'three'
		when 4 then 'four'
		when 5 then 'five'
		when 6 then 'six'
		when 7 then 'seven'
		when 8 then 'eight'
		when 9 then 'nine'
	end

	special = case special_cases
		when 11 then 'eleven'
		when 12 then 'twelve'
		when 13 then 'thirteen'
		when 14 then 'fourteen'
		when 15 then 'fifteen'
		when 16 then 'sixteen'
		when 17 then 'seventeen'
		when 18 then 'eighteen'
		when 19 then 'nineteen'
	end

	if left>=100
		english_numbers.push english_hundreds
		if special_case == false && tens!=0
			english_numbers.push ' and '+english_tens
			if ones>0
				english_numbers.push '-'+english_ones
			end
		elsif special_case == true
			english_numbers.push ' and '+special
		end
	elsif left<100
		if left==10 || left>=20
			english_numbers.push english_tens
			if ones>0
				english_numbers.push '-'+english_ones
			end
		elsif left<10
			english_numbers.push english_ones
		elsif left>10 && left<20
			english_numbers.push special
		end
	end

	return english_numbers.join('')
end

def input
	puts english_number gets.chomp.to_i
end

puts 'Please enter a number between 0 and 1000'
input