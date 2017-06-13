words = []

while true
word = gets.chomp
words.push word
	if word == ''
		break
	end
end

puts words.sort