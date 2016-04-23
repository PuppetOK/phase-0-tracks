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

##############################
animals.map! do |animals|
  animals.capitalize
end
p animals

##############################

animals.map! do |animals|
  animals.capitalize
end
p animals


digits_and_words = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four"
}

integers = [1, 2, 3, 4]

integers.delete_if {|int| int < 2}
p integers

digits_and_words.delete_if {|digit, word| digit < 2}
p digits_and_words

integers.keep_if{|int| int > 2}
p integers

digits_and_words.keep_if{|digit, word| digit > 2}
p digits_and_words

integers.collect!{|int| int + 100}
p integers

digits_and_words.reject!{|digit, word| digit > 3}
p digits_and_words

