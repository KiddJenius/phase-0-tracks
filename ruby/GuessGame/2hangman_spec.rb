require_relative '2hangman'

describe Hangman do 
	let(:game) { Hangman.new(anchor) }
	
	it "adds two integers" do
    expect(game.is_over).to eq false
  end
end

