class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    int.times do
      puts "Woof!"
    end
  end
  
  def roll_over
    puts "rolls over"
  end
  
  def dog_years(human_years)
    dog_years = human_years * 7 
    puts dog_years
  end
  
  def play_dead
    puts "*Plays dead*"
  end
  
  def initialize
    puts "Initializing new puppy instance..."
  end
    
end

# driver code
ball = Puppy.new
ball.fetch("ball")
ball.speak(5)
ball.roll_over
ball.dog_years(4)
ball.play_dead

class Sport
  
  def initialize
    puts "initializing..."
  end
  
  def favorite_sport(sport)
    puts "#{sport} is the best sport."
  end
  
  def least_favorite_sport(name_sport)
    puts "#{name_sport} is my least favorite sport in the world."
  end
  
end 

sport = Sport.new
sport.favorite_sport("baseball")
sport.least_favorite_sport("Curling")
store_array = []
50.times do
  store_array << Sport.new
  p store_array
end 

store_array.each do |instances|
  instances.favorite_sport("baseball")
  instances.least_favorite_sport("curling")
end
