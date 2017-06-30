Dir.chdir '/Users/michellemao/Desktop'

birth_dates = {}

File.read('birthdates.txt').each_line do |line|
	line = line.chomp
	index = 0
	while line[index] != ',' && index < line.length
		index = index + 1
	end
	comma = index - 1
	
	name = line[0..comma] 
	date = line[-12..-1]
	
	birth_dates[name] = date
end

puts 'Who\'s birth date are you looking for?'
name = gets.chomp
date = birth_dates[name]

if date.nil?
	puts 'Sorry, I don\'t have that one.'
else
	puts name + '\'s birth date is: ' + date
end