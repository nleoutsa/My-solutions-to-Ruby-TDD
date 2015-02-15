#pig_latin.rb

def translate(input)
	array = input.split(' ')
	array.map! do |word|

		beginning = word[/[aeiou]+.*/]
		ending = word[/[^aeiou]*/]

		if word[/[^aeiou]*/].include?('q')
			beginning = word[/[aeio]+.*/]
			ending = word[/[^aeiou]*u/]
		end

		
		beginning << ending << "ay"

	end
	array.join(' ')
end