# # Array Drills

# zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]



# # 1. Iterate through the zombie_apocalypse_supplies array,
# # printing each item in the array separated by an asterisk
# # ----

# zombie_apocalypse_supplies.each do |item|
# 	p "* #{item}"
# end

# # 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# # in alphabetical order. Do not use any special built-in methods.
# # ----

# # def sort_items(array)
	
# #   n = array.length
 
# #   loop do
  	
# #     swapped = false
# #     alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']


# #     (n-1).times do |i|
# #       d = array[i]
# #       e = array[i+1]

    	
# #       if d[0] > e[0]
# #         d, e = e, d
# #         swapped = true
# #       end
# #     end

   

# #     break if not swapped
# #   end

# #   array
# # end

# # sort_items(zombie_apocalypse_supplies)

# # 3. Create a method to see if a particular item (string) is in the
# # zombie_apocalypse_supplies. Do not use any special built-in methods.
# # For instance: are boots in your list of supplies?
# # ----

# p "Finding an item"

# def search_array(arr, item)
#     #take into consideration the array, numbers
#     #take the integer we want to find
#     #scan array to see if integer is in the array
#     p item
#     index = nil
#     arr.length.times do |it|
#         if arr[it] == item
#             index = it
#         end
#     end
#     #if integer is in array, print what index integer is at
#     #if integer is not in array, print nil
#     p "At index #{index}" 
# end

# p search_array(zombie_apocalypse_supplies, "rations")

# # 4. You can't carry too many things, you've only got room in your pack for 5.
# # Remove items in your zombie_apocalypse_supplies in any way you'd like,
# # leaving only 5. Do not use any special built-in methods.
# # ----

# def deleting_items(arr)
# 	n = arr.length
# 	items_gone = []
# 	if n > 4
# 		items_gone << arr unless items_gone.include?(n)
# 	else
# 		p "your pack is fine"
# 	end
# 	p items_gone
# end


# deleting_items(zombie_apocalypse_supplies)


# # 5. You found another survivor! This means you can combine your supplies.
# # Create a new combined supplies list out of your zombie_apocalypse_supplies
# # and their supplies below. You should get rid of any duplicate items.
# # Find the built-in method that helps you accomplish this in the Ruby
# # documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
#                             "solar battery", "flashlight"]
# # ----

# zombie_apocalypse_supplies.concat(other_survivor_supplies)
# zombie_apocalypse_supplies.uniq
# p zombie_apocalypse_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

def printing_hash(hash)
	# i = 0
	hash.each_pair {|key,value| puts "* #{key} - #{value} *"}
	 
end

printing_hash(extinct_animals)


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def deleting(hash)
	# hash.delete_if { |key,value| block }
	hash.each do |key, input|
		if input < 2000
			p hash[key] = input
		end
	end
end

deleting(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

def wrong_year(hash)
	hash.each do |key, input|
		hash[key] = input - 3
	end
end

p extinct_animals
p wrong_year(extinct_animals)

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def checking_extinction(hash, questioned_animal)
	hash.each do |extinct_animal, year|
		if extinct_animal == questioned_animal
			p "#{questioned_animal} IS EXTINCT"
		else
			p "#{questioned_animal} is not extinct"
		end
	end
end

checking_extinction(extinct_animals, "Andean Cat")
checking_extinction(extinct_animals, "Dodo")
checking_extinction(extinct_animals, "Saiga Antelope")


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
def found_bird(hash)
	hash.delete_if {|animal, year| animal == "Passenger Pigeon"}
	p "Passenger Pigeon was found not extinct"
	p hash
end

found_bird(extinct_animals)

