#friend.rb

class Friend
	def greeting(input = nil)
		return "Hello!" unless input != nil
		"Hello, #{input}!"
	end
end