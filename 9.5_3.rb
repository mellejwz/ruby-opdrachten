def numbertoRoman(numerical)
	roman = "";
	while (numerical >= 1000)
		roman += "M";
		numerical -= 1000;
	end
	while (numerical >= 900)
		roman += "CM";
		numerical -= 900;
	end
	while (numerical >= 500)
		roman += "D";
		numerical -= 500;
	end
	while (numerical >= 400)
		roman += "CD";
		numerical -= 400;
	end
	while (numerical >= 100)
		roman += "C";
		numerical -= 100;
	end
	while (numerical >= 90)
		roman += "XC";
		numerical -= 90;
	end
	while (numerical >= 50)
		roman += "L";
		numerical -= 50;
	end
	while (numerical >= 40)
		roman += "XL";
		numerical -= 40;
	end
	while (numerical >= 10)
		roman += "X";
		numerical -= 10;
	end
	while (numerical >= 9)
		roman += "IX";
		numerical -= 9;
	end
	while (numerical >= 5)
		roman += "V";
		numerical -= 5;
	end
	while (numerical >= 4)
		roman += "IV";
		numerical -= 4;
	end
	while (numerical >= 1)
		roman += "I";
		numerical -= 1;
	end
	return roman;
end

puts 'What number would you like to convert to Roman?'
puts numbertoRoman(gets.chomp.to_i)