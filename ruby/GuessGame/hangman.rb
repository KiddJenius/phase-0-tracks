
class GuessGame
  attr_reader :tries
  attr_accessor :is_over, :new_ary 
  

  def initialize(anchor)
    @anchor = anchor
    @tries = anchor.length 
    @anchor_ary = anchor.split('')
    @new_ary = ["_"] * anchor.length
    @is_over = false
  end

  def compare(letter)
    @anchor_ary.each_with_index do |element, index|

      if letter == element
        @new_ary[index] = letter
      end
    end
      
  @tries -= 1
      if @tries == 0 && @new_ary.include?("_")
        @is_over = true
        puts "You lost!!"
      end
      
    if @new_ary.include?("_") == false
      @is_over= true
      puts "Wow, you're good!!"
    end
  end
end


puts "Player one, give me a word to start off with."
anchor = gets.chomp.downcase
game = GuessGame.new(anchor)

while !game.is_over
  puts "You have #{game.tries} tries left."
  puts "Player two, give me a letter to guess the word:"
  guess_letter = gets.chomp
  game.compare(guess_letter)
  puts "This is what it looks like so far: #{game.new_ary.join('')}"
end






