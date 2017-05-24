class Santa 
  attr_reader :age, :ethnicity
  attr_accessor :gender
  
  def initialize (gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end
    
  def speak
    puts "Ho, ho, ho! Happy holidays! I am a #{@gender} #{@ethnicity}!"
   end
  
  def eat_milk_and_cookies(type)
    puts "That was a good #{type} treat."
  end
  
  def get_mad_at (reindeer_name)
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    p reindeer_ranking
    reindeer_ranking.delete(reindeer_name)
    reindeer_ranking.push(reindeer_name)
    puts "#{reindeer_name} to the back!!"
    puts reindeer_ranking
  end
  
  def celebrate_birthday(age)
    age = rand(140)
    puts "I'm #{age} years old!!"
  end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santa = Santa.new("Nordic", "Guy")
santa.speak
santa.get_mad_at("Vixen")

age = 0 
santas.each do |x|
  x.speak
  x.celebrate_birthday(age)
  x.eat_milk_and_cookies("oatmeal")
end







 