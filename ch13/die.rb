class Die
	def initialize
		roll
	end
	
	def roll
		@number_showing = 1 + rand(6)
	end
	
	def showing
		@number_showing
	end 
	
	def cheat
	side = gets.chomp.to_i
		while side >= 0 && side <= 6
			@number_showing = side
			return @number_showing
		end
	end

end

die= Die.new

die.cheat
puts die.showing