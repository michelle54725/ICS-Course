def dict_sort some_array
	recursive_dict_sort some_array, []
end

def recursive_dict_sort unsorted_array, sorted_array
	if unsorted_array.length == 0
		return sorted_array
	end
	
	test_word = unsorted_array.pop
	biggers = []
	
	unsorted_array.each do |compared_word|
		if compared_word.downcase < test_word.downcase
			biggers.push test_word
			test_word = compared_word
		else
			biggers.push compared_word
		end
	end
	sorted_array.push test_word
	recursive_dict_sort biggers, sorted_array
end

puts 'Enter words to be sorted'

words = []

while true
	word = gets.chomp
	if word == ''
		break
	end
	
	words.push word
end

puts 'Sorted:'

puts dict_sort words