def roman_to_int input
	values_hash = {}
	values_hash['i'] = 1
	values_hash['v'] = 5
	values_hash['x'] = 10
	values_hash['l'] = 50
	values_hash['c'] = 100
	values_hash['d'] = 500
	values_hash['m'] = 1000

	input = input.downcase
	conved  = 0
	conv2 = 0
	length = input.length - 1
	while length >= 0
		v = input[length]
		c = values_hash[v]
		
		if c.nil?
			puts 'Please enter a valid roman numeral.'
		end
		
		if c < conv2
			c = c * -1
		else
			conv2 = c
		end
		conved = conved + c
		length = length - 1
	end
	puts conved
end

puts 'Enter roman numeral to be converted to an integer:'
roman = gets.chomp

puts roman_to_int roman