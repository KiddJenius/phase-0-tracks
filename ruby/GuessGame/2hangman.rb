class Hangman 

  def initialize(anchor)
    @guess_total = 0
    @is_over = false
    @anchor = anchor
    @split = anchor.split('')
    @answer = ""
  end
  
  
  
end 

puts "Player one, give me a word to start off with."
anchor = gets.chomp.downcase
game = Hangman.new(anchor)