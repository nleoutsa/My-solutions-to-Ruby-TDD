#performance_monitor.rb

def measure(n = 1)
	a= Time.now
	n.times do
		yield
	end
	(Time.now - a) / n
end