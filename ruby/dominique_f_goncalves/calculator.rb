$store_data = []

def calculate(int1, operator, int2)

	result = int1.send(operator, int2)
	p result

	$store_data.push("#{int1} #{operator} #{int2} = #{result}")

end

loop do
	p "Hello user, lets have you enter a calculation"
	p "Please enter the first number you'd like to operate on"
	calc1 = gets.to_i
	p "Please enter the operator you would like to use"
	calc2 = gets.chomp
	p "Please enter the second number you would like to operate on"
	calc3 = gets.to_i

	calculate(calc1, calc2, calc3)

	p "Would you like to do another calculation? (yes/done)"
	answer = gets.chomp

	Kernel.at_exit{puts "#{$store_data}"}
	break if answer == "done" 


	redo if answer == "yes"


end

