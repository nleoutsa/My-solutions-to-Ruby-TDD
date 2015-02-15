#book_titles.rb

class Book

	def title
		@title
	end

	def title=(book_title)
		@title = titleize(book_title)	
	end

	def titleize(input)
	array = input.split(' ')
	little_words = ['and', 'an', 'the', 'a', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by', 'over', 'in', 'of']

	array.each do |word|
		little_words.include?(word) ? word : word.capitalize!
	end

	array[0].capitalize!
	array.join(' ')

end
end

