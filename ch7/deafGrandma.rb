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
		puts 'Okay, take care hun.'
		break
	end	
end