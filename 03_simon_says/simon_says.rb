#simon_says.rb 

def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, times = 2)
	("#{input} "*times).rstrip
end

def start_of_word(word, num_letters)
	word[0, num_letters]
end

def first_word(input)
	input[0, (input.rindex(' '))]
end

def titleize(input)
	array = input.split(' ')
	little_words = ['and', 'an', 'the', 'a', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by', 'over']

	array.each do |word|
		little_words.include?(word) ? word : word.capitalize!
	end
	array[0].capitalize!
	array.join(' ')

end