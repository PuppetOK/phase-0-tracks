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

def adding_item(newitem, quantity)
  $grocery_list[newitem] += quantity
  p $grocery_list
end

adding_item("carrots", 3)




# our_list = "carrots apples cereal pizza"

# def create(list)
#   list = list.split()
#   hash = {}
#   list.each { |food| hash[food] = 1 }
#   return hash
# end

# def adding_item(current_list, newitem, quantity)
#   current_list[newitem] += quantity
#   return current_list
# end

# my_grocery_list = create(our_list)
# my_grocery_list = adding_item(my_grocery_list, 'carrots', 3)
# #my_grocery_list = remove_item(my_grocery_list, 'carrots', 1)

# puts my_grocery_list



# adding_item("carrots", 3)

# Method to add an item to a list
# input: item name and optional quantity - prompt user with string asking what item they want to add and how many
# steps: set variable to item name (item1), give quantity
# output: Added item and quantity to the list

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: