def convert num		
	if (num.to_i >= 1 && num.to_i <= 3000)
		converted = 			'M'*(num.to_i / 1000)
		converted = converted + 'D'*(num.to_i % 1000 / 500)
		converted = converted + 'C'*(num.to_i % 500 / 100)
		converted = converted + 'L'*(num.to_i % 100 / 50)
		converted = converted + 'X'*(num.to_i % 50 / 10)
		converted = converted + 'V'*(num.to_i % 10 / 5)
		converted = converted + 'I'*(num.to_i % 5 / 1)
		puts converted
	else
		puts 'Please enter a # between 1 and 3000'
	end
end

puts 'What # would you like converted to old roman numerals?'
num = gets.chomp
convert num
