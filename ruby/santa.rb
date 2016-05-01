class Santa
	def speak
		puts "Ho, ho, ho! Haaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize 
		puts "Initializing Santa instance..."
	end

end
test1 = Santa.new
p test1.speak
p test1.eat_milk_and_cookies("snickerdoodle")
p test1.initialize