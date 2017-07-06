class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    puts "Woof " * integer
  end
  
  def rollover
    puts "Roll over!"
  end
  
  def dog_years(human_years)
    dog_age = human_years*7
    p dog_age
  end
  
  def eat_shoes
    shoes_eaten = true 
  end
  
end

bear = Puppy.new
bear.fetch("bone")
bear.speak(3)
bear.rollover
bear.dog_years(11)

class Weather
  
  def initialize
    puts "Initialized..."
  end
  
  def wind
    puts "This must be Chicago"
  end
  
  def fog 
    puts "This must be SF"
  end


end

today = Weather.new 
today.wind
today.fog 

weather_options = []
4.times do |x|
  x = Weather.new 
  weather_options << x 
end 


weather_options.each do |y|
  y.wind
  y.fog
end










