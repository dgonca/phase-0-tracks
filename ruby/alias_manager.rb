#take in spy's real name
#split up name by words
#reverse names
#push vowels next
#push constants next

$stored_spy_names = {}
$spy_name = ""
$spy_real_name = ""

def create_spy_alias(str)

	# real_name = "Felicia Torres"

	
	stored_spy_names = {}
	real_name = str
	first_spy_name = real_name.split(' ') 
	first_spy_name.reverse!
	# p first_spy_name
	alias_fn = first_spy_name[0]
	alias_ln = first_spy_name[1]



	# spy_name.join('')

	#replace a with e
	#replace e with i
	#replace i with o
	#replace o with u
	#replace u with a

	def next_vowel(str)
		vowels = ['a', 'e', 'i', 'o', 'u']
		str = str.split('')
		new_str = str.map do |char|
			if vowels.include?(char)
				vowels.rotate(1)[vowels.index(char)]
			else
				char

			end
		end
	end

	first_fn = next_vowel(alias_fn)
	# p first_fn

	first_ln = next_vowel(alias_ln)
	# p first_ln

	def next_constant(str)
		constants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
		upper_case_constants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"]
		new_str = str.map do |char|
			if constants.include?(char)
				constants.rotate(1)[constants.index(char)]
			elsif upper_case_constants.include?(char)
				upper_case_constants.rotate(1)[upper_case_constants.index(char)]
			else
				char
			end
		end
	end

	second_fn = next_constant(first_fn)
	second_ln = next_constant(first_ln)

	# p second_fn
	# p second_ln

	together_fn = second_fn.join('')
	together_ln = second_ln.join('')

	$spy_name = "#{together_fn} #{together_ln}"
	p $spy_name
	$stored_spy_names. << "#{$spy_real_name}", "#{$spy_name}"
	p $stored_spy_names

end

def calling_spy_names
	i = 1

	p "Hello DBC spy team, how many aliases do you need to make?"
	amount = gets.to_i

	until i > amount
		p "Please enter the spy's real name to create their alias."
		spy_real_name = gets.chomp
		spy_name = create_spy_alias(spy_real_name)

		i += 1
	end

	# $stored_spy_names[nil].chomp
	$stored_spy_names[nil].delete

	Kernel.exit($stored_spy_names)

end

calling_spy_names()





