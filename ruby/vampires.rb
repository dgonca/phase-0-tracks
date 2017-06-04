vampire_warning_level = 0
i = 0

p "Hello, how many employees will be processed?"
n_e = gets.chomp.to_i

while i < n_e

	p "Welcome to Werewolf Inc."

	p "Hello what is your name?"
	employee_name = gets.chomp

	p "How old are you?"
	employee_age = gets.chomp.to_i

	p "And what year were you born?"
	employee_birth_year = gets.chomp.to_i

	p "Our company cafeteria serves garlic bread. Should we order you some? (y/n)"
	garlic_bread = gets.chomp

	p "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp

	if employee_age == (2017 - employee_birth_year) 
		vampire_warning_level += 0
		p "Vampire warning level is #{vampire_warning_level}"
	elsif employee_age == (2016 - employee_birth_year)
		vampire_warning_level += 0
		p "Vampire warning level is #{vampire_warning_level}"
	elsif employee_age != (2017 - employee_birth_year) || employee_age != (2016 - employee_birth_year)
		vampire_warning_level += 2 
		p "Vampire warning level is #{vampire_warning_level}"
	else 
		p "Something is wrong with your answer"
	end

	if garlic_bread == 'y'
		vampire_warning_level += 0
		p "Vampire warning level is #{vampire_warning_level}"
	elsif garlic_bread == 'n'
		vampire_warning_level += 1
		p "Vampire warning level is #{vampire_warning_level}"
	else
		p "Vampire warning level is #{vampire_warning_level}"
	end

	if insurance == 'y'
		vampire_warning_level += 0
		p "Vampire warning level is #{vampire_warning_level}"
	elsif insurance == 'n'
		vampire_warning_level += 1
		p "Vampire warning level is #{vampire_warning_level}"
	else
		p "Vampire warning level is #{vampire_warning_level}"
	end


	p "Are you a vampire?"
	if employee_name == "Drake Cula" || employee_name == "Tu Fang"
		puts "Definitely a vampire, it's obvious"
	elsif vampire_warning_level <= 1
		puts "Probably not a vampire"
	elsif vampire_warning_level === 3
		puts "Probably a vampire"
	elsif vampire_warning_level === 4
		puts "Almost certainly a vampire"
	else
		puts "Results inconclusive"
	end


	
	a_l = "no"

	while a_l == "no"

		p "Do you have any allergies? Type one allergy at a time"
		allergy_j = gets.chomp

		if allergy_j == "sunshine"
			p "Probably a vampire"
		else 
			p "Not suspicious"
		end

		p "Do you have any more allergies? (done/no)"
		test = gets.chomp
		if test == "done"
			a_l == "done"
			p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
			break
		elsif test == "no"
			a_l == "no"
		end
	end 
end





