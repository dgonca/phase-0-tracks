job_application = {
	name: "",
	address: "",
	email: "",
	phone: "",
	shade_of_blue: "",
	wallpaper1: "",
	wallpaper2: "",
	wallpaper3: "",
	wallpaper4: "",
	ombre: "",
}

p "Interior Design Job Application"

p "Please fill out the information below"

p "What is your name?"
job_application[:name] = gets.chomp

p "What is your address?"
job_application[:address] = gets.chomp

p "What is your email?"
job_application[:email] = gets.chomp

p "What is your phone number?"
job_application[:phone] = gets.chomp

p "What is your favorite shade of blue?"
job_application[:shade_of_blue] = gets.chomp

p "What are your wallpaper preferences "
w_a = "A. paisley"
w_b = "B. chevrons"
w_c = "C. photorealistic woodsy scenes (with or without squirrels)"
w_d = "D. abstract woodsy scenes (no squirrels)"

p w_a + "Do you like yes or no?"
w_a_p = gets.chomp
case w_a_p
when w_a_p == "yes"
	w_a_p == true
when w_a_p == "no"
	w_a_p == false
else
	"something is wrong with your answer, please answer yes or no."
end
p w_b + "Do you like yes or no?"
w_b_p = gets.chomp
case w_b_p
when w_b_p == "yes"
	w_b_p == true
when w_b_p == "no"
	w_b_p == false
else
	"something is wrong with your answer, please answer yes or no."
end

p w_c + "Do you like yes or no?"
w_c_p = gets.chomp
case w_c_p
when w_c_p == "yes"
	w_c_p == true
when w_c_p == "no"
	w_c_p == false
else
	"something is wrong with your answer, please answer yes or no."
end

p w_d + "Do you like yes or no?"
w_d_p = gets.chomp
case w_d_p
when w_d_p == "yes"
	w_d_p == true
when w_d_p == "no"
	w_d_p == false
else
	"something is wrong with your answer, please answer yes or no."
end

if w_a_p == true
	job_application[:wallpaper1] = "Paisley"
elsif w_b_p == true
	job_application[:wallpaper2] = "Chevrons"
elsif w_c_p == true
	job_application[:wallpaper3] = "Photorealistic woodsy scenes (with or without squirrels)"
elsif w_d_p == true
	job_application[:wallpaper4] = "Abstract woodsy scenes (no squirrels)"
else
	p "Something is wrong with your answers"
end

p "Ombre is: (pick one)"
o_a = "Fierce"
o_b = "So last season"
o_c = "Practically medieval in its appalling irrelevance"

p o_a + "(yes/no)"
p_o_a = gets.chomp
case p_o_a
when p_o_a == "yes"
	p_o_a == true
when p_o_a == "no"
	p_o_a == false
else
	"something is wrong with your answer, please answer yes or no."
end

p o_b + "(yes/no)"
p_o_b = gets.chomp
case p_o_b
when p_o_b == "yes"
	p_o_b == true
when p_o_b == "no"
	p_o_b == false
else
	"something is wrong with your answer, please answer yes or no."
end

p o_c + "(yes/no)"
p_o_c = gets.chomp
case p_o_c
when p_o_c == "yes"
	p_o_c == true
when p_o_c == "no"
	p_o_c == false
else
	"something is wrong with your answer, please answer yes or no."
end

if p_o_a == true
	job_application[:ombre] = "Fierce"
elsif p_o_b == true
	job_application[:ombre] = "So last season"
elsif p_o_c == true
	job_application[:ombre] = "Fierce"
else 
	p "something is wrong with your answer"
end

p "here is your application done"
p job_application


	
	



	






