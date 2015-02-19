#array_extensions.rb

class Array

	def sum
		self.inject {|sum, number| sum + number} || 0
	end

	def square
		self.map {|number| number**2 } || self
	end

	def square!
		self.map! {|number| number**2 } || self
	end
end
