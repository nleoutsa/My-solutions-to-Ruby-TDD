#rpn_calculator.rb


class RPNCalculator

	def initialize
		@stack = []
	end

	def push(number)
		@stack.push(number)
	end

	def plus
		raise 'calculator is empty' if @stack.empty?
		@stack[@stack.length - 2] = @stack[-2] + @stack[-1]
		@stack.pop
	end

	def minus
		raise 'calculator is empty' if @stack.empty?
		@stack[@stack.length - 2] = @stack[-2] - @stack[-1]
		@stack.pop
	end

	def divide
		raise 'calculator is empty' if @stack.empty?
		@stack[@stack.length - 2] = @stack[-2].to_f / @stack[-1]
		@stack.pop
	end

	def times
		raise 'calculator is empty' if @stack.empty?
		@stack[@stack.length - 2] = @stack[-2] * @stack[-1]
		@stack.pop
	end

	def tokens input
		@stack = input.split.map do |element|
			element.match(/[\D]/) ? element.to_sym : element.to_i
		end
	end

	def evaluate input
		@stack = input.split.map do |element|
			element.match(/[\D]/) ? element.to_sym : element.to_i
		end

		while @stack.length > 2 do
			@stack.each_with_index do |item, index|
				if item == :+
					@stack.slice!(index)
					@stack[index - 2] = @stack[index - 2] + @stack[index - 1]
					@stack.slice!(index - 1)
			
				elsif item == :-
					@stack.slice!(index)
					@stack[index - 2] = @stack[index - 2] - @stack[index - 1]
					@stack.slice!(index - 1)
			
				elsif item == :*
					@stack.slice!(index)
					@stack[index - 2] = @stack[index - 2] * @stack[index - 1]
					@stack.slice!(index - 1)
			
				elsif item == :/
					@stack.slice!(index)
					@stack[index - 2] = @stack[index - 2].to_f / @stack[index - 1]
					@stack.slice!(index - 1)
				end
			end
		end
		puts @stack.join.to_f
		@stack.join.to_f
	end

	def value
		@stack[@stack.length - 1]
	end
end


