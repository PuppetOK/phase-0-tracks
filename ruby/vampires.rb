puts "How many employees will be processed?"
num_of_employees = gets.chomp.to_i

employees_processed = 0
while employees_processed < num_of_employees

	puts "What is your name?"
	vamp_name = gets.chomp
	puts "How old are turning this year, what year were you born?"
	vamp_age = gets.chomp.to_i
	vampire_yearborn = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company's insurance?"
	insurance = gets.chomp

	time = Time.new

	if time.year - vamp_age == vampire_yearborn
	correct_age = true
	else
	correct_age = false
	end

	if garlic_bread == "yes"
	likes_garlic = true
	else
	likes_garlic = false
	end

	if insurance == "yes"
	health_insurance_wanted = true
	else
	health_insurance_wamted = false
	end

	if correct_age && (likes_garlic || health_insurance_wanted)
	puts "Probably not a vampire"
	elsif (correct_age != true && likes_garlic != true) || health_insurance_wanted != true
	puts "Probably a vampire."
	elsif (correct_age != true && likes_garlic != true) && health_insurance_wanted != true
		puts "almost certainly a vampire"
	elsif vamp_name == "Drake Cula"
		puts "Definitely a vampire."
	elsif vamp_name == "Tu Fang"
		puts "Definitely a vampire."
	else 
		puts "We're not sure what you are."
	end
	employees_processed += 1
end