puts '"99 Bottles of Beer on the Wall" lyrics'.center(50)
puts 

num0 = 99
while num0 > 0
	puts (num0.to_s + ' bottles of beer on the wall,').center(50)
	puts (num0.to_s + ' bottles of beer!').center(50)
	puts ('Take one down, pass it around,').center(50)
	num0 = num0 - 1
	puts (num0.to_s + ' bottles of beer on the wall!').center(50)
	puts 
	
	if num0 == 2
	puts (num0.to_s + ' bottles of beer on the wall,').center(50)
	puts (num0.to_s + ' bottles of beer!').center(50)
	puts ('Take one down, pass it around,').center(50)
	num0 = num0 - 1
	puts ('One more bottle of beer on the wall!').center(50)
	puts 
	end
	
	if num0 == 1
	puts (num0.to_s + ' bottle of beer on the wall,').center(50)
	puts (num0.to_s + ' bottle of beer!').center(50)
	puts ('Take it down, pass it around,').center(50)
	num0 = num0 - 1
	puts ('You got no more bottles of beer on the wall :(').center(50)
	puts 
	end
end

