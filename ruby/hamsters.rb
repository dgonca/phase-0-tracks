puts "Hello Clerk"
puts "What is the hamster's name? Please enter."
hamster_name = gets.chomp
puts "Hello #{hamster_name}!"

puts "On a scale of 1 to 10, how loud is #{hamster_name}."
volume_level = gets.chomp
puts "Okay so, #{hamster_name} is #{volume_level.to_i} on the volume scale."

puts "What fur color is #{hamster_name}."
fur_color = gets.chomp
puts "#{hamster_name} has #{fur_color} fur."

puts "Is #{hamster_name} a good canidate for adoption? (y/n)"
adoption = gets.chomp
if adoption == "y"
	puts "Yay! #{hamster_name} is great for adoption!"
elseif adoption == "n"
	puts "Oh no, #{hamster_name} is not a good fit for adoption. :("
end

puts "Do you know how old #{hamster_name} is? Please enter age."
estimated_age = gets.chomp
if estimated_age == ""
	puts "So you don't know #{hamster_name}'s age."
else
	puts "#{hamster_name} is #{estimated_age.to_i}"
end
