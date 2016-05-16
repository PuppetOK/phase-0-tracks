class Dragon
  
  attr_reader :fire_attack, :claw_attack
  attr_accessor :name, :color, :age, :length
  
  def initialize(name, color, age, length)
    puts "The dragon is coming!"
    @name = name
    @age = age
    @color = color
    @length = length
  end
  
  def fire_attack
    puts " *fire* *fire* WHOOOSH *fire* *fire*"
  end
  
  def claw_attack
    puts "*The dragon lunges out and scratches at the air*"
  end
  
end

dragons = []

program_end = false
while program_end == false
  puts "We're going to make up some dragons! Hit enter to continue. Type 'done' if you don't want to make anymore."
  done = gets.chomp.downcase
  if done == "done"
    program_end = true
  else
    puts "What is its name?"
      @name = gets.chomp.to_s
    puts "What color is this dragon?"
      @color = gets.chomp.to_s
    puts "How old is this dragon?"
      @age = gets.chomp.to_i
    puts "How big is this dragon?(in meters)"
     @length = gets.chomp.to_i
    new_dragon = Dragon.new(@name, @color, @age, @length)
    dragons << new_dragon
  end
end

dragons.each do |another_dragon|
	puts "This dragons name is #{another_dragon.name}"
	puts "This dragon is #{another_dragon.color} and is #{another_dragon.age} years old!"
	puts "He is #{another_dragon.length} meters long!"
	another_dragon.fire_attack
	another_dragon.claw_attack
end

# dragon1 = Dragon.new("Fred", 300, "red", "140 feet")
# p dragon1.fire_attack
# p dragon1.claw_attack
# p dragon1.name
# p dragon1.color
# p dragon1.age
# p dragon1.length