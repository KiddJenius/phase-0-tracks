#Since this number is tied to the whole survey, get it early
puts "How many employees are going through this racket?"
candidates = gets.chomp.to_i

# method for the entire survey
def survey
  puts "So what's your name?"
  name = gets.chomp.downcase

  puts "How old are you?"
    given_age = gets.chomp.to_i
  puts "In what year were you born?"
    birthyear = gets.chomp.to_i

# uses current year 
  current_year = Time.new.year
  if current_year - birthyear == given_age
    puts "That math checks out."
  else
    puts "Hmmm, the math on that doesn't seem right."
  end
  truth_age = given_age == current_year - birthyear
  
  puts "Our cafeteria serves garlic bread, should we get you some, yes or no?"
  bread = gets.chomp.downcase
  likes_garlic = bread == "yes"

  puts "Are you going to enroll in our health insurance, yes or no?"
  health_ins = gets.chomp.downcase
  wants_ins = health_ins == "yes"

# After general questions the program loops until "none" or "done" end the loop
  puts "List any alergies you have. Put 'done' when done."
  alergies = gets.chomp.downcase
  until alergies == "done" || alergies == "sunshine"
      puts "Any more?"
      alergies = gets.chomp.downcase
  end

# if/elsif block to make a reco on the likelyhood of vampire status
  
  if truth_age && (likes_garlic || wants_ins)
    result = "Probably not a vampire."
  end
  if !truth_age && (likes_garlic && !wants_ins) || (!likes_garlic && wants_ins) 
  result = "Probably a vampire"
  end
  if !truth_age && !likes_garlic && !wants_ins
    result = "Almost certainly a vampire"
  end
  if name == "drake cula" || name == "tu fang"
    result = "Definately a vampire."
  end
  if alergies == "sunshine"
    result = "Probably a vampire"
  end
  if result == nil
    puts "Results inconclusive"
  end
  if result != nil
    puts result
  end
end

# the method in a loop that exits when all candidates are in the system
until candidates == 0
  survey
  candidates= candidates - 1
  puts "#{candidates} left to process."
end




