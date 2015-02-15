#dictionary.rb

class Dictionary
	def initialize
		@dict = Hash.new
	end

	def entries
		@dict
	end

	def add(hash_item)
		return @dict.merge!({hash_item => nil}) if hash_item.class == String
		@dict.merge!(hash_item)

	end

	def keywords
		@dict.keys.sort
	end

	def include?(keyword)
		@dict.keys.include? keyword
	end

	def find(input)
		matching_words = @dict.keep_if {|key| key[0, input.length] == input}
	end

	def printable
		print_dict = ''
		@dict.sort.each {|key, value| print_dict << %Q([#{key}] "#{value}"\n)}
		print_dict.chomp
	end
end


@d = Dictionary.new

puts '----------------add--------------------'

@d.add({'fish' => 'aq animal'})
@d.add('panda')
@d.add({'fig' => 'fruit'})
@d.add('fiddle')

puts '----------------printable--------------------'

puts @d.printable

