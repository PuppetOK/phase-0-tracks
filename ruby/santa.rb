class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  
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
    reindeer = "Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen"
    reindeer_ranking << reindeer.split
  end
  
  def age(age)
    @age = age
  end
  
  def celebrate_birthday
    @age += 1
  end
  
  def get_mad_at(reindeer_name)
    reindeer_ranking.insert(-1, reindeer_name)
  end
    
    
end
santa = Santa.new("male", "white")
p santa.speak
p santa.eat_milk_and_cookies("snickerdoodle")
puts santa.reindeer_ranking
puts santa.age(30)
puts santa.celebrate_birthday
puts santa.get_mad_at("Vixen")





example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

multi_santa = []

10.times do
  multi_santa << Santa.new(example_genders.sample, example_ethnicities.sample)
end

multi_santa.each {|santa| puts "#{santa} is #{santa.ethnicity} ethnicity, and a #{santa.gender}."}