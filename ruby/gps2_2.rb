
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # pull each item from the string to convert into keys for the hash
  # set default quantity of each item 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] we would want a hash

#GROCERY LIST


def grocery_list(items)
	#items string into an array
	#create hash named LIST 
	#LIST << items[0]
	#LIST[:carrots] = 2

	item_array = items.split(" ")
	food_list = {}
	

	item_array.each do |fooditem|
		food_list[fooditem] = 2
	end

	food_list
	# p food_list

end

master_list = grocery_list("Carrots Bananas") 




# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: use list variable and put item into the list then entering quantity if needed 
# output: how many items are in the list

def add_item(list, item, quantity)

	list[item] = quantity
	list

end

master_list = add_item(master_list, "Lemonade", 2)
master_list = add_item(master_list, "Tomatoes", 3)
master_list = add_item(master_list, "Onions", 1)
master_list = add_item(master_list, "Ice Cream", 4)

# Method to remove an item from the list
# input: list and item name
# steps: use list variable and delete item from list
# output: how many items are in the list

def delete_item(list, item)
	list.delete(item)
	list
end

master_list = delete_item(master_list, "Lemonade")

# Method to update the quantity of an item
# input: list, item name, and new quantity
# steps: use list variable and call item name to change value of item name
# output: print item name and new value - return

def update_item(list, item, new_quantity)
	list[item] = new_quantity
	list
end

master_list = update_item(master_list, "Ice Cream", 1)


# Method to print a list and make it look pretty
# input: list
# steps: loop through the list and print out each item and its value as a nice string
# output: list, prettified

def prettify_list(list)
	list.each do |item, quantity|
		p "You have #{quantity} #{item}"
	end
end

prettify_list(master_list)


#reflection
#pseudocode: i learned how to make it more indepth and that the more you write out the easier it is for everyone to understand

#for this challenege it was better to use hashes because it allows you store key and values for the amount of items for each thing
#because if we were to use arrays, youd have to list out how many of each, like repeating and then count how many times each item appears
#in the array

#a method returns the last value that was asked for

#you can pass any type of data as an argument

#you make sure that the method is returning the correct thing and then when you call the method save it to another variable 
#when you want to use that in another method, you call it as an argument and thats how you can insert it into other methods.

#the way to use variables between methods is really solidifed now, it makes much more sense than before. also the ways of iterating through 
#all the steps is much more set in stone.


