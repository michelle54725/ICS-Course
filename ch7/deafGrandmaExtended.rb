while true
	puts 'What would you like to ask Grandma?'
	reply = gets.chomp
	
	if reply == reply.upcase && reply != 'BYE'
		puts 'NO, NOT SINCE ' +(rand(1930..1950)).to_s+ '!'
	end
	
	if reply != reply.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	
	if reply == 'BYE'
		puts 'WAIT, DON\'T GO SONNY'
		reply2 = gets.chomp
			
			if reply2 == 'BYE'
				puts 'but...'
				reply3 = gets.chomp
					
					if reply3 == 'BYE'
						puts 'Fine, take care hun.'
						break						
					end									
			end
	end	
		
end