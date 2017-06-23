def shuffle array
	recursive_shuffle array, []
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

puts 'Enter words to be shuffled'

words = []

while true
	word = gets.chomp
	if word == ''
		break
	end
	
	words.push word
end

puts 'Shuffled:'

puts shuffle words