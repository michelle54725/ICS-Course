def convert num		
	if (num.to_i >= 1 && num.to_i <= 3000)
		converted = 			'M'*(num.to_i / 1000)
	
		if num.to_i % 1000 / 100 == 9
			converted = converted + 'CM'
		elsif num.to_i % 1000 / 100 == 4
			converted = converted + 'CD'
		else
			converted = converted + 'D'*(num.to_i % 1000 / 500)
			converted = converted + 'C'*(num.to_i % 500 / 100)
		end
			
		if num.to_i % 100 / 10 == 9
			converted = converted + 'XC'
		elsif num.to_i % 100 / 10 == 4
			converted = converted + 'XL'
		else
			converted = converted + 'L'*(num.to_i % 100 / 50)
			converted = converted + 'X'*(num.to_i % 50 / 10)
		end
		
		if num.to_i % 10 == 9
			converted = converted + 'IX'
		elsif num.to_i % 10 == 4
			converted = converted + 'IV'
		else
		converted = converted + 'V'*(num.to_i % 10 / 5)
		converted = converted + 'I'*(num.to_i % 5 / 1)
		end

		puts converted
	else
		puts 'Please enter a # between 1 and 3000'
	end
end

puts 'What # would you like converted to old roman numerals?'
num = gets.chomp
convert num
