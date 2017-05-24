
class Puppy

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