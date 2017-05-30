#design class game to crete a game

class WordGame 

	attr_reader :print_out_string, :word

	def initialize()
		@number_of_guesses = nil
		@word = nil
		@guessing_word = ""
		@print_out_string = nil

	end

	def get_word(word)
		@word = word
		@number_of_guesses = @word.length + 2
		p "Player 2, you have #{@number_of_guesses} guesses to guess the word"
		new_length = @word.length
		@print_out_string = @guessing_word.ljust(new_length, "_")
		@word
		@print_out_string
	end


	def guess_a_letter(letter)

		until @number_of_guesses 
			@number_of_guesses = @number_of_guesses - 1
			p "#{@number_of_guesses} guesses left"
			#if letter is equal to a letter in the word, correct and print out

			if @word.index(letter)
				p "#{letter} was correct"
				correct = @word.index(letter)
				@print_out_string[correct] = letter
				p @print_out_string

				# p @word.index(letter)
			else
				p "That letter was not in the word, sorry."
				p @print_out_string
				p "Guess another word"
			end
		end

	end
end

game = WordGame.new
p "Welcome players to Guess the Word!"
p "Player 1, please pick a word"
gameword = gets.chomp
gameword = game.get_word(gameword)



def guess_the_word(word, gameclass, guessingword)
	p "Player 2, let's have you start guessing the word"

	guess_length = word.length + 2
	guess_length.to_i

	guess_length.times do
		p "Please guess a letter"
		letter_guess = gets.chomp
		gameclass.guess_a_letter(letter_guess)

		if word == guessing_word
			break
		end
	end
		
	
end

guess_the_word(gameword, game, game.print_out_string)


# welcome players to the game

# ask player 1 for the word
# use the word to determine number of guesses by finding the length of the word and inputing that as the number of guesses allowed 
#plus two extra guesses
# to give 2 times to mess up. 

# say hello to player 2 and tell them the length of the word, and how many guesses they have
# ask them for a guess
# and lessen by one the number of guesses left

# if the letter is in the word, fill it in and then print out the letter in the place where it would be, along with dashes to be a subsitute
# for the blank word

# if the player guesses a letter that is not in the word, write out "sorry, try again" and then reprint out what letters have already been
# correctly guessed

# the asking for a letter and seeing if it is in the word or not should happen until either the word has been completley guessed, or if the 
# player has ran out of guesses. 

# if the player correctly guesses the word, say "congratulations, you guessed the word right"
# if the player loses, say "you better get better at guessing if you're going to win."