$nesting_depth = 0
def log block_desc, &block
	indent = '	' * $nesting_depth.to_i
	puts indent + "Beginning '#{block_desc}'..."
	$nesting_depth = $nesting_depth.to_i + 1

	returned = block.call.to_s
	puts indent + "...'#{block_desc}' finished, returning: #{returned}"
	$nesting_depth = $nesting_depth.to_i - 1
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
	

