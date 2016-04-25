#make a method that switches the first and last name, changes all the vowels to the next vowel in 'a,e,i,o,u' and changes the constants to the next constant
#define variables for constants and vowels
#take the input name and split and reverse it
#put it back together and compair each letter to the vowels and constonants using .each
#change the vowels to the next vowel in the line
#make a condition statement that takes ' ', 'z','u' and inputs the next letter (taking care of edge cases)
#put the letters back together to form a name
#make new alias capitalized
#prompt user for input
#print out the generated alias


def alias_generator(name)
	generated_alias = []
	vowels = 'aeiou'
	constonants = 'bcdfghjklmnpqrstvwxyz'
	original_name = name.downcase.split(' ').reverse.join(' ').chars
	original_name.each do |original_letter|
		if ['a','e','i','o','u'].include?(original_letter)
			vowel_index = vowels.index(original_letter) + 1
			generated_alias << vowels[vowel_index]
		elsif original_letter.include?(' ')
			generated_alias << ' '
		elsif original_letter.include?('z')
			generated_alias << 'b'
		elsif original_letter.include?('u')
			generated_alias << 'a'
		else
			constonants_index = constonants.index(original_letter) + 1
			generated_alias << constonants[constonants_index]
		end
	end
	new_alias = generated_alias.join('').split(' ')
	new_alias.each do |new_alias|
		new_alias.capitalize!
	end
	new_alias.join(' ')
end


puts "What name should be given an alias?"
name = gets.chomp
name = alias_generator(name)
p name