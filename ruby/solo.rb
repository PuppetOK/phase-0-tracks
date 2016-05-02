class Dragons
  
  attr_reader 
  attr_accessor
  
  def initialize(name, age, color, length)
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
  
  def color(dragon_color)
    
  end
end