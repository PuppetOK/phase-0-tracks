class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
    puts "This Santas gender is: #{gender}"
    puts "This Santa is: #{ethnicity} ethnicity"
  end
  
  def speak
    puts "Ho, ho, ho! Haaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  
end
test1 = Santa.new("white", "white")
p test1.speak
p test1.eat_milk_and_cookies("snickerdoodle")
