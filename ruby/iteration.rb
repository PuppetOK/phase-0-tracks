def happy
  puts "I am happy"
  yield
end

happy {puts "Thats great, me too."}


animal_sounds = {
  "dog" => "woof",
  "cat" => "meow",
  "pig" => "oink",
  "horse" => "neigh"
  }

animals = ["dog", "cat", "pig", "horse"]

p animal_sounds

animal_sounds.each do |animal, sound| 
  puts "The #{animal} goes #{sound}!"
end

p animal_sounds

p animals

animals.each do |animal|
  puts "#{animal} is a good pet"
end

p animals
map!

animals.map! do |animals|
  animals.capitalize
end
p animals