require_relative 'game'

describe WordGame do 
	let(:gametest) { WordGame.new }

	it "takes in a word" do
		expect(gametest.get_word("apple")).to eq "_____"
	end

	it "prints a letter guess" do
		expect(gametest.guess_a_letter("e")).to eq "____e"
	end	
end


