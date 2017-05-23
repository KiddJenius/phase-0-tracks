#Create a new list
#Add an item with a quantity to the list
#Remove an item from the list
#Update quantities for items in your list
#Print the list (Consider how to make it look nice!)

# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # take a string
  # .split(' ') creates array of separated items
  # create hash for item and quantity
  # iterate through array and feed items as keys into hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, hash]
def create_list(string_list)
  array_list = string_list.split(' ')
  default_quantity = 1
  hash_list = {}
  array_list.each {|x|hash_list[x]=default_quantity}
  return hash_list
end
example_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: input into hash, an item and quantity find method to push item and quantity
# output: hash with added item
def add_item(list, item, quantity=1)
  list[item] = quantity
  return list
end
p add_item(example_list, "fudge", 3)

# Method to remove an item from the list
# input: list, item
# steps: find method to remove a key and it's pair
# output: hash with item removed
def remove_item(list, item)
  list.delete(item)
  return list
end

p remove_item(example_list, "fudge")

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: call list and key and change the quantity value
# output: hash with updated quantity
def update_list(list, item, quantity)
  list[item]=quantity
  return list
end
p update_list(example_list, "carrots", 3)

# Method to print a list and make it look pretty
# input: hash
# steps: iterate and puts each key value pair to print list
# output: hash
def print_hash(hash_list)
  hash_list.each {|item, quantity|puts "#{item}, #{quantity}"}
end
print_hash(example_list)
