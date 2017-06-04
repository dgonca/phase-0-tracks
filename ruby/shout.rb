# module Shout
# 	#we'll put some methods here soon

# 	def self.yell_angrily(words)
# 		p "#{words}" + "!!!" + " :("
		
# 	end
# 	def self.yelling_happily(words)
# 		p "#{words}" + "!!!" + " :)"
		
# 	end
# end

# Shout.yell_angrily("Why am i here")
# Shout.yelling_happily("Why am i in love")

module Shout
	def yell_angrily(words)
		p "#{words} !!!! :((("
	end

	def yell_happily(words)
		p "#{words} !!! :DDD"
	end
end

class Man
	include Shout
end

class Woman
	include Shout
end

man = Man.new
woman = Woman.new

man.yell_angrily(" A man says: You're the worst")
man.yell_happily("A man also says: I love you")
woman.yell_angrily("A man says: You're the worst")
woman.yell_happily("A woman also says: I love you")