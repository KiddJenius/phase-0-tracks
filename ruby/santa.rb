class Santa 
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  def initialize (gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end
    
  def speak
    puts "Ho, ho, ho! Happy holidays! I am a #{@ethnicity} #{@gender}"
  end
  
  def eat_milk_and_cookies(type)
    puts "That was a good #{type} treat."
  end
  
  def get_mad_at (reindeer_name)
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    reindeer_ranking.delete(reindeer_name)
    reindeer_ranking.push(reindeer_name)
  end
  
  def celebrate_birthday(age)
    age += 1 
    puts age
  end
  
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

age =90
santa = Santa.new("guy", "Nordic") 
santa.speak
santa.get_mad_at("Vixen")
santa.celebrate_birthday(80)
santa.gender = "doll"
puts santa.speak
puts santas[4, 5]