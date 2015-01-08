def numerical_to_roman(numerical)
	numerical_thousand = numerical/1000
	numerical_fivehundred = (numerical%1000)/500
	numerical_hundred = (numerical%500)/100
	numerical_fifty = (numerical%100)/50
	numerical_ten = (numerical%50)/10
	numerical_five = (numerical%10)/5
	numerical_one = (numerical%5)
	return ('M'*numerical_thousand).to_s+('D'*numerical_fivehundred).to_s+('C'*numerical_hundred).to_s+('L'*numerical_fifty).to_s+('X'*numerical_ten).to_s+('V'*numerical_five).to_s+('I'*numerical_one).to_s
end

puts 'What number would you like to convert to Roman?'
puts numerical_to_roman(gets.chomp.to_i)