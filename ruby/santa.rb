class Santa 
  def initialize
    puts "Initializing Santa instance..."
  end
  
  def speak
    puts "Ho, ho, ho! Haaapy holidays!"
  end
  
  def eat_milk_and_cookies(type)
    puts "That was a good #{type} treat."
    type
  end
  
end

Santa = Santa.new 