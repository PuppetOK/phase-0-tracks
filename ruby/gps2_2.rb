# GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
# Determine what kind of items will be on list
# Determine how many they will need
  # set default quantity (will set as 1) 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] we will output print method (hash) 


our_list = "carrots apples cereal pizza"
$grocery_list = {}


def create(list)
  list = list.split()
  p list
  list.each { |food| $grocery_list[food] = 1 }
  p $grocery_list
end

create(our_list)


# Method to add an item to a list
# input: item name and optional quantity - prompt user with string asking what item they want to add and how many
# steps: set variable to item name (item1), give quantity
# output: Added item and quantity to the list

def adding_item(newitem, quantity)
  $grocery_list[newitem] = quantity
  p $grocery_list
end

adding_item("Lemonade", 2)
adding_item("Tomatoes", 3)
adding_item("Onions", 1)
adding_item("Ice cream", 4)

# Method to remove an item from the list
# input: make a method that takes an item to remove
# steps: deletes the entered item from the grocery list
# output: grocery list with item removed

def remove_item(removed_item)
  $grocery_list.delete(removed_item)
  p $grocery_list
end

remove_item("Lemonade")

# Method to update the quantity of an item
# input:make a method that takes a new item and quantity
# steps: taking the original grocery list and adding new item and quantity to list
# output: the new grocery list

def update_item(newitem, quantity)
  $grocery_list[newitem] = quantity
  p $grocery_list
end

update_item("Ice cream", 1)

# Method to print a list and make it look pretty
# input: $grocery_list
# steps: .each for every item
# output: print out a line with each item and quantity
$grocery_list.each {|food,number| puts "Buy #{food} in quantity of #{number}"}

# I leanred from pseudocode in this assignment (and from my helpful guide) that it doesn't have to be super complex or indepth. Which I like cause pseudocoding makes me super frustrated and uncomfortable. But I do know why its important.
# Arrays you could just put them in a list easily, but you wouldn't be able to assign any values to the items in the array. That is why hashes are more suitable for this specific assignment.
# A method returns whatever the method is meant to do? (this question is really vague to me..)
# You can pass a lot of things through methods. Strings, integers, other methods, arrays, hash's. (the last few I am pretty certain on.)
# To pass data between methods there are two ways. One way is declaring a global variable (which we did). The second way is to pass the data as parameters of the method (which I am pretty sure we were given an example of).
# The biggest things that were cleared up for me were the global variable and the passing data as a parameter. I am still not 100% on passing the info as a parameter in a method, but with practice I should get it.
#