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

# There's probably a better way to auto update the current year.  This if/elsif block references several areas in the program to see if age and given birthyear line up

  current_year = Time.new.year

  current_year = 2017

  if current_year - birthyear == given_age
    puts "That math checks out."
  else
    puts "Hmmm, the math on that doesn't seem right."
  end

  puts "Our cafeteria serves garlic bread, should we get you some, yes or no?"
  bread = gets.chomp.downcase

  likes_garlic = bread == "y"

  puts "Are you going to enroll in our health insurance, yes or no?"
  health_ins = gets.chomp.downcase
  wants_ins = health_ins == "y"

# After general questions the program loops until "none" or "done" end the loop
  puts "List any alergies you have.  If none put 'none'.  Put 'done' when done."
  alergies = gets.chomp.downcase
  until alergies == "done" || alergies == "sunshine"
      puts "Any more?"
      alergies = gets.chomp.downcase


  puts "Are you going to enroll in our health insurance, yes or no?"
  health_ins = gets.chomp.downcase

# After general questions the program loops until "none" or "done" end the loop
  puts "List any alergies you have.  If none put 'none'.  Put 'done' when done."
  algery_input = false
  until algery_input
  alergies = gets.chomp.downcase
    if alergies == "done" || alergies =="none"
      puts "Thanks!!"
      algery_input = true
    elsif alergies == "sunshine"
      alergy_input = true
      break
    else 
      puts "Any more?"
    end

  end

# basically defines the truth
    if current_year - birthyear == given_age
      testimony = true
    else 
      testimony = false
    end

# if/elsif block to make a reco on the likelyhood of vampire status

  
  if testimony == true && (bread == "yes" || health_ins == "yes")
    result = "Probably not a vampire."
  end
  if testimony == false && (bread == "no" && health_ins == "yes") || (bread == "yes" && health_ins == "no") || alergies == "sunshine"
    result = "Probably a vampire"
  end
  if testimony == false && bread == "no" && health_ins == "no"
    result = "Almost certainly a vampire"
  end
  if name == "drake cula" || name == "tu fang"
    result = "Definately a vampire."
  end
  if result == nil
    puts "Results inconclusive"
  end
  if result != nil
    puts result
  end

  if name == "drake cula" || name == "tu fang"
    puts "Definately a vampire."
  elsif testimony == true && (bread == "yes" || health_ins == "yes")
    puts "Probably not a vampire."
  elsif testimony == false && (bread == "no" && health_ins == "yes") || (bread == "yes" && health_ins == "no") || alergies == "sunshine"
    puts "Probably a vampire"
  elsif testimony == false && bread == "no" && health_ins == "no"
    puts "Almost certainly a vampire"
  else
    puts "Results inconclusive"
  end

end

# the method in a loop that exits when all candidates are in the system
until candidates == 0
  survey
  candidates= candidates - 1
  puts "#{candidates} left to process."
end



