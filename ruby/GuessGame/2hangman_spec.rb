require_relative '2hangman'

describe Hangman do 
	let(:game){Hangman.new(anchor)}

	it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end