def everyhour(&block)
	hour = Time.new.hour
	
	if hour >= 13
		hour = hour - 12
	end
	
	if hour == 0
		hour = 12
	end
	
	puts "Hours: #{hour}"
	
	hour.times do 
		block.call
	end
	
end

everyhour do
	puts 'DONG!'
end