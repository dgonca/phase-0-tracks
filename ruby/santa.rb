class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
	def initialize(gender, ethnicity)
		# p "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak
		p "Ho ho ho! Haaaapy Holidays"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		p "Reinder Ranking before #{@reindeer_ranking}"
		p "Santa got mad at #{reindeer_name}"
		bad_r_index = @reindeer_ranking.index("#{reindeer_name}")
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(bad_r_index))
		p @reindeer_ranking
	end
	
end


# santa = Santa.new("male", "brazilian")
# santa.get_mad_at("Dasher")
# santa.celebrate_birthday
# p "Santa is now #{santa.age}"
# santa.gender = "bigender"
# p "Santa is #{santa.ethnicity}"

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", 
	"N/A", "gender neutral", "no gender", "pangender", "hijra", "khanith", "two-spirit identities", "gender bender", "third gender"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", 
	"Mystical Creature (unicorn)", "N/A", "greek", "russian", "African", "Cuban", "Brazilian", "Mexican", "Canadian", "french"]

50.times do 
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	randomAge = Random.new
	santa.age = randomAge.rand(140)
	p "Here is a new Santa"
	p "This Santa is #{santa.age}"
	p "This Santa is #{santa.gender}"
	p "This Santa is #{santa.ethnicity}"
end


