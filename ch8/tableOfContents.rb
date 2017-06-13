title = 'Table of Contents'

contents = [] 
# ch#, title, page
contents[0] = [1, 'Getting Started', 1]
contents[1] = [2, 'Numbers', 9]
contents[2] = [3, 'Letters', 13]

puts title.center(60)
	
contents.each do |content|	
	chapter = 'Chapter ' + content[0].to_s + ': ' + content[1].to_s
	page = 'page ' + content[2].to_s
	
	puts chapter.ljust(30) + page.rjust(30)
end