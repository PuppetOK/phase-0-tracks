class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
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
  
  def reindeer_ranking
    reindeer_ranking = []
    reindeer = "Rudolph,Dasher,Dancer,Prancer,Vixen,Comet,Cupid,Donner,Blitzen"
    reindeer_ranking << reindeer.split(",")
  end
  
  def age(age)
    @age = age
  end
    
end
santa = Santa.new("male", "white")
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")
puts santa.reindeer_ranking
puts santa.age(12)
