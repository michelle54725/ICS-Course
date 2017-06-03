puts 'Starting year?'
startY = gets.chomp
puts 'Ending year?'
endY = gets.chomp

puts 'Leap years:'
num = startY.to_i
while num <= endY.to_i
	if num%4 == 0
		if num%100 != 0 || num%400 == 0 
		puts num
		end
	end
	num = num + 1
end
