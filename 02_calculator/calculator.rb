#calculator.rb

def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	array.inject(0) {|accumulator, number| accumulator + number}
end

def multiply(array)
	array.inject {|product, number| product * number}
end

def power(a, b)
	a ** b
end

def factorial(a)
	return 0 if a == 0
	multiply(1..a)
end