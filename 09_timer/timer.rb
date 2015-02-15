#timer.rb

class Timer
	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		s = format('%02d', @seconds % 60)
		m = format('%02d', (@seconds / 60) % 60)
		h = format('%02d', @seconds / 3600)
		"#{h}:#{m}:#{s}"
	end

end