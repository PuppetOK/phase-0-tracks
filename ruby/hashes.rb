#initialize new hash
#ask user for input
#store input as symbols.
#print out the hash for user.
#ask if the user wants to add anything else to the hash
#skip if user inputs 'none'
#else add new key
#user enter new_key id
#user give new_key value
#print out hash with new key and value.


interior_designer = {}
puts "Name: "
interior_designer[:client_name] = gets.chomp.to_s
puts "Age: "
interior_designer[:client_age] = gets.chomp.to_i
puts "Married (yes/no): "
interior_designer[:client_married] = gets.chomp.downcase
if interior_designer[:client_married] = "yes"
	interior_designer[:client_married] == true
else
	interior_designer[:client_married] = false
end
puts "Number of children: "
interior_designer[:client_children] = gets.chomp.to_i
puts "Decore theme: "
interior_designer[:client_decore_theme] = gets.chomp.to_s
puts "Number of rooms in the house: "
interior_designer[:client_rooms] = gets.chomp.to_i
puts "Amount willing to spend: "
interior_designer[:client_spending_amount] = gets.chomp.to_i


p interior_designer 

puts "Is all the above information correct?(type none if there are no issues)"
info_correct = gets.chomp
if info_correct == "none"
	p interior_designer
else
	new_key = info_correct.to_sym
	
puts "What value should #{new_key} have?"
	if new_key == :client_name || new_key == :client_decore_theme
		interior_designer[new_key] = gets.chomp.to_s
		elsif new_key == :client_age || new_key == :client_children || new_key == :client_rooms || new_key == :client_spending_amount
		interior_designer[new_key] = gets.chomp.to_i
	else new_key == :client_married
		interior_designer[new_key] = gets.chomp.downcase
	end
	p interior_designer
end