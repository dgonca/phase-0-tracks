# class Puppy

#   def initialize
#   	p "Initializing new puppy instance..."
#   end


#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(int)
#   	int.times{p "Woof!"}
#   end

#   def rollover
#   	p "*rolls over*"
#   end

#   def dog_years(humanyears)
#   	dogyears = humanyears * 7
#   	p dogyears
#   end

#   def sit
#   	p "*sits*"
#   end


# end

# fido = Puppy.new


# fido.fetch("ball")
# fido.speak(10)
# fido.rollover
# fido.dog_years(10)
# fido.sit

class Traveler
  def initialize
    "Initializing new Traveler"
  end

  def country_in(country)
    p "This traveler is in #{country} right now!"
  end

  def pictures_taken(amount, country)
    p "This photographer took #{amount} pictures in #{country}"
  end
end

# traveler = Traveler.new
# traveler.country_in("The Netherlands")
# traveler.pictures_taken(300, "France")

travelers = []
travelers = 50.times.collect {Traveler.new}

# p travelers

# countries = ["France", "USA", "Canada", "Holland", "Germany", "Greece", "Spain", "England"]

travelers.each do |instance|
  instance.country_in("USA")
  instance.pictures_taken(200, "Spain")
end

