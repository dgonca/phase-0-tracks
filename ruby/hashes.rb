#create hash

client = {
	name: "",
	age: "",
	num_o_child: "",
	city: "",
	profession: "",
	decor_theme: "",
	chandeliers: "",
	fave_paint_color: "",
	sandproof: "",
	padded: "",

}


#say hello to designer
p "Hello designer"
#designer needs to enter details of a given client. 
p "here is the program to store all your client's information."
p "Fill out the form below"

#enter basic information
#name
p "What is the client's name?"
client[:name] = gets.chomp
#age
p "What is the #{client[:name]}'s age?"
client[:age] = gets.to_i
#number of children
p "How many children does the #{client[:name]} have?"
client[:num_o_child] = gets.to_i
#city
p "What city does #{client[:name]} live in?"
client[:city] = gets.chomp
#job
p "What is #{client[:name]}'s profession?"
client[:profession] = gets.chomp

#information about decor
#list out decor themes and have the client choose 2
p "Pick two decor themes that the client has, separate them by a comma."
p "Mid Century Modern"
p "Pseudo Vintage"
p "Country Fetch"
p "Industrial"
p "Minimalist"
p "Scandinavian"
p "Bohemian"
p "Rustic"
p "Shabby Chic"
p "Hollywood Glam"

#inputing for decor themes

client[:decor_theme] = gets.chomp

#chandeliers true or false
p "Does #{client[:name]} want chandeliers?"
client[:chandeliers] = gets.chomp


#favorite paint color

p "What is #{client[:name]}'s favorite paint color?"
client[:fave_paint_color] = gets.chomp

#sandproof true or fase

p "Does #{client[:name]} want the house to be sandproof?"
client[:sandproof] = gets.chomp

#padded true or false

p "Does #{client[:name]} want the house to be padded"
client[:padded] = gets.chomp

#say hello to client

p "Hello client, let's make sure all the information is correct."

#fixing name if needed

p "Your name is #{client[:name]} correct? (yes/no)"
nic = gets.chomp
case nic 
when nic = "yes"
	p "good"
when nic = "no"
	p "Please enter your name correctly."
	client[:name] = gets.chomp
end

#fixing number of children if needed

p "You have #{client[:num_o_child]} children correct? (yes/no)"
noc = gets.chomp
case noc 
when noc = "yes"
	p "good"
when noc = "no"
	p "please enter the right number of children that you have"
	client[:num_o_child] = gets.to_i 
end

#fixing city if needed

p "You live in #{client[:city]}, correct? (yes/no)"
cic = gets.chomp
case cic 
when cic = "yes"
	p "good"
when cic = "no"
	p "Please write the correct city you live in."
	client[:city] = gets.to_sym
end

#fixing profession if needed

p "You work as a #{client[:profession]}, correct? (yes/no)"
pic = gets.chomp
case pic 
when pic = "yes"
	p "good"
when pic = "no"
	p "Please correct your profession"
	client[:profession] = gets.to_sym
end

#fixing decor stuff now

#decor theme

p "You like #{client[:decor_theme]} as your decor themes correct?? (yes/no)"
dic = gets.chomp
case dic 
when dic = "yes"
	p "good"
when dic = "no"
	p "Please refer to the list of decor themes above and list the two you like best. "
	client[:decor_theme] = gets.chomp 
end

#chandeliers 

p "#{client[:chandeliers]} you want chandeliers? (yes/no)"
chic = gets.chomp
case chic 
when chic = "yes"
	p "good"
when chic = "no"
	pnc = client[:chandeliers] 
	client[:chandeliers] = !pnc
end

#favorite paint color

p "Your favorite paint color is #{client[:fave_paint_color]} correct? (yes/no)"
paic = gets.chomp
case paic 
when paic = "yes"
	p "good"
when paic = "no"
	p "Please enter your favorite paint color"
	client[:fave_paint_color] = gets.to_sym 
end

#sandproof

p "#{client[:sandproof]} you want your house sandproofed? (yes/no)"
spic = gets.chomp
case spic 
when spic = "yes"
	p "good"
when spic = "no"
	spnc = client[:sandproof] 
	client[:sandproof] = !spnc
end

#padded

p "#{client[:padded]} you want your house padded? (yes/no)"
pdic = gets.chomp
case pdic 
when pdic = "yes"
	p "good"
when pdic = "no"
	ppnc = client[:padded] 
	client[:padded] = !ppnc
end

p client

