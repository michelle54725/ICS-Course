def log block_desc, &block
	puts "Beginning #{block_desc}..."
	returned = block.call.to_s
	puts "...#{block_desc} finished, returning: #{returned}"
end

log 'outer block' do
	log 'some little block' do
		log 'another little block' do
			1+1
		end
		4+1
	end
	
	log 'yet another block' do
		"I like Chinese food!"
	end
	
	false
end
	

