class OrangeTree
	def initialize
		@age = 0
		@height = 10
		@fruit = 0
	end
	
	def height
		"Height: #{@height}"
	end
	
	def age
		"Age: #{@age}"
	end
	
	def orangeCount
		"Oranges: #{@fruit}"
	end
	
	def pickOrange
		if @fruit >= 1
			@fruit = @fruit - 1
			'You picked a fruit. It was delicious.'
		else
			'There are no more fruit ripe for picking this year'
		end
	end
	
	def one_year_passes
		if @age >= 5 && @age <= 50
			@fruit = @fruit + 5
			puts 'The tree produced 5 oranges'
		else
			puts 'The tree is too young to bear fruit.'
		end 
				
		if @age <= 50
			@age    = @age + 1
			@height = @height + 1
			puts 'The tree grew 1cm'
		else 
			puts 'The tree dies of old age'
			exit
		end
	end
	
end

tree = OrangeTree.new
puts tree.one_year_passes
puts tree.height
puts tree.age
puts tree.orangeCount

5.times do 
	tree.one_year_passes
end

puts tree.height
puts tree.age
puts tree.orangeCount

tree.pickOrange

puts tree.orangeCount

50.times do
	tree.one_year_passes
end
