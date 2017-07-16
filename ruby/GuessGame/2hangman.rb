class Hangman
  
  attr_reader :tries
  attr_accessor :answer, :is_over

  def initialize(anchor)
    @original = anchor
    @anchor = anchor
    @tries = anchor.length 
    @split = anchor.split('')
    @answer = ["_"] * anchor.length 
    @is_over = false
  end
  
  def compare(letter)
    @split.each_with_index do |i, index|
      if letter == i
        @answer[index] = letter
      end
    end
    @tries -= 1 

    if @tries == 0 && @answer.include?("_")
      @is_over = true
      puts "You lost!! The word was \'#{@original}\'."
    end
    
    if @answer.include?("_") == false
      @is_over= true
      puts "Wow, you're good!!  The word was \'#{@original}\'."
    end
  end
end 

#USER INTERFACE

puts "Player one, give me a word to start off with."
anchor = gets.chomp.downcase
used = []
game = Hangman.new(anchor)

until game.is_over
  if game.tries == 1 
    puts "You only have #{game.tries} try left!"
  else
    puts "You have #{game.tries} tries left."
  end
  
  puts "Player two, give me a letter to guess the word:"
  letter = gets.chomp
  
  if used.include?(letter)
    puts "Already used that letter.."
  else
    used << letter
    game.compare(letter)
    if !game.is_over
      puts "This is what it looks like so far: #{game.answer.join(' ')}"
    end
  end
end