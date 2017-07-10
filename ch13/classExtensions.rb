class Array
	def shuffle
		recursive_shuffle self, []
	end

	def recursive_shuffle unshuffled_array, shuffled_array
		if unshuffled_array.length == 0
			return shuffled_array
		end
	
		random_elementnum = rand(unshuffled_array.length)
		random_word = unshuffled_array[random_elementnum]
	
		shuffled_array.push random_word
		unshuffled_array.delete_at(random_elementnum)
	
		recursive_shuffle unshuffled_array, shuffled_array
	end
end

class Integer
	def factorial
		if self <= -1
			'N/A'
		elsif self == 1 || self == 0
			1
		else
			self * (self-1).factorial
		end
	end
	
	def toRoman	
		num = self
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

		 	converted
		else
			'Please enter a # between 1 and 3000'
		end
	end
end

puts [1, 2, 3, 4, 5].shuffle
puts -1.factorial
puts 0.factorial
puts 3.factorial
puts 1945.toRoman
puts 3001.toRoman