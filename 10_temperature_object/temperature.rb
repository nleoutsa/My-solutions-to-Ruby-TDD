#temperature.rb

class Temperature

	def initialize(options = {})
		@options = options
	end

	def in_fahrenheit
		return @options[:f] unless @options.has_key?(:c)
		@options[:c] * 9.0 / 5 + 32

	end

	def in_celsius
		return @options[:c] unless @options.has_key?(:f)
		(@options[:f] - 32) * 5 / 9.0
	end
end

def Temperature.from_celsius(celsius)
	Temperature.new({:c => 50})
end

def Temperature.from_fahrenheit(fahrenheit)
	Temperature.new({:f => 50})
end

class Celsius < Temperature
	def initialize degrees
		@degrees = degrees
	end

	def in_celsius
		@degrees
	end

	def in_fahrenheit
		@degrees * 9.0 / 5 + 32
	end
end

class Fahrenheit < Temperature
	def initialize degrees
		@degrees = degrees
	end

	def in_celsius
		(@degrees - 32) * 5 / 9.0
	end

	def in_fahrenheit
		@degrees
	end
end 


temp = Temperature.new({
	:c => 32
	})

puts temp.in_fahrenheit

puts temp.in_celsius