puts 'Hello! What year were you born?'
year = gets.chomp.to_i

puts 'Month? (Jan. = 1, Feb. = 2, etc.)'
month = gets.chomp.to_i

puts 'Day?'
day = gets.chomp.to_i

Age = (Time.new - Time.local(year, month, day))/(3.154*10**7)

puts "You're old! To celebrate...\n" + "SPANK\n"*Age.to_i
