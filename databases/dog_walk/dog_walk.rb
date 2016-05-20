# Create a program that tracks dog walks.
# Store info in a database
# ask user for date, time, what dog, how long.

require 'sqlite3'

dog_walks = SQLite3::Database.new("dog_walks.db")
dog_walks.results_as_hash = true

create_table_dog_walks = <<-SQL
	CREATE TABLE IF NOT EXISTS dog_walks (
	id INTEGER PRIMARY KEY,
	walk_date VARCHAR(255),
	dog_id INT,
	time_of_day VARCHAR(255),
	walk_length VARCHAR(255),
	FOREIGN KEY (dog_id) REFERENCES dog_name(id)
	);
SQL

create_table_dog_name = <<-SQL
	CREATE TABLE IF NOT EXISTS dog_name (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
	);
SQL

 dog_walks.execute(create_table_dog_walks)
 dog_walks.execute(create_table_dog_name)

dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Toby');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Bender');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Ginger');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Aslan');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Bob');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Roofus');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Mickey');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Bader');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Dodge');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Donny');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Brutis');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Rei');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Cheif');")
dog_walks.execute("INSERT OR IGNORE INTO dog_name (name) VALUES ('Reese');")



def add_walk(db)

	 puts "Date of walk? (mm/dd/yy)"
	 walk_date = gets.chomp

	 dogname = db.execute("SELECT * FROM dog_name")
	 dogname.each do |dogname|
	 	puts "#{dogname['name']} is ##{dogname['id']}"
	 end
	
	puts "What dog did you walk? (Out of the list of the 14 dogs you normally walk)"
	dog_taken_for_walk = gets.chomp.to_i

	until (1..14) === dog_taken_for_walk
		puts "No dog corresponds to that number, please make sure you entered the correct corresponding number to the dog you walked."
		dog_taken_for_walk = gets.chomp.to_i
	end
	

	puts "What time of the day was it when you walked?"
	time_of_day = gets.chomp

	puts "How long did you walk for?"
	walk_length = gets.chomp

	db.execute("INSERT INTO dog_walks (walk_date, dog_id, time_of_day, walk_length) VALUES (?,?,?,?)", [walk_date, dog_taken_for_walk, time_of_day, walk_length])

end

def date_of_dog_walks(db, looking_for_date)

	puts "These are the walks for #{looking_for_date}"

	given_date = db.execute("SELECT dog_walks.dog_id, dog_walks.time_of_day, dog_walks.walk_length, dog_name.name FROM dog_walks JOIN dog_name ON dog_walks.dog_id = dog_name.name WHERE walk_date='#{looking_for_date}';")

	given_date.each do |walks|
		puts "Dog: #{walks['dog_id']}"
		puts "Time of Day: #{walks['time_of_day']}"
		puts "Walk Length: #{walks['walk_length']}"
	end

end

def print_all_walks(db)

	puts "Here are all the walks you have been on and with what dogs."

	every_walk = db.execute("SELECT * FROM dog_walks JOIN dog_name ON dog_walks.dog_id = dog_name.id;")
	
	every_walk.each do |walks|
		puts "Date: #{walks['walk_date']}"
		puts "Dog: #{walks['dog_id']}"
		puts "Time of day: #{walks['time_of_day']}"
		puts "Walk Length: #{walks['walk_length']}"
	end
end

def delete_data(db, date, dog)

	db.execute("DELETE FROM dog_walks WHERE walk_date='#{date}' AND dog_id='#{dog}';")

end

puts "Welcome. Type 'help' if you would like to see the commands. If you already know the command you would like to use type it now. Type 'exit' if you are done."

program_end = false

until program_end == true

	userInput = gets.chomp.downcase

	if userInput == "help"
		puts "Type 'add' to add a walk."
		puts "Type 'list' to see all the walks on a certain date."
		puts "Type 'total walks' to see all your walks."
		puts "Type 'delete' to remove data."
	elsif userInput == "end"
		program_end = true
	elsif userInput == "add"
		add_walk(dog_walks)
		puts "Anything else?"
	elsif userInput == "list"
		puts "What date would you like to lookup?(mm/dd/yy)"
		user_date = gets.chomp
		date_of_dog_walks(dog_walks, user_date)
		puts "Anything else?"
	elsif userInput == "total walks"
		print_all_walks(dog_walks)
		puts "Anything else?"
	elsif userInput == "delete"
		puts "What is the date you'd like to delete? (mm/dd/yy)"
		delete_date = gets.chomp
		puts "What was the dog ID that was on the walk?"
		delete_dog = gets.chomp
		delete_data(dog_walks, delete_date, delete_dog)
	else
		puts "Invalid input. Try again"
	end
end