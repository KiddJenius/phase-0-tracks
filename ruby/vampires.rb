puts "How many employees are going through this racket?"
candidates = gets.chomp.to_i

def survey
  puts "So what's your name?"
  name = gets.chomp.downcase

  puts "How old are you?"
    given_age = gets.chomp.to_i
  puts "In what year were you born?"
    birthyear = gets.chomp.to_i

  current_year = 2017
  if current_year - birthyear == given_age
    puts "That math checks out."
  else
    puts "Hmmm, the math on that doesn't seem right."
  end

  puts "Our cafeteria serves garlic bread, should we get you some, yes or no?"
  bread = gets.chomp.downcase

  puts "Are you going to enroll in our health insurance, yes or no?"
  health_ins = gets.chomp.downcase

  puts "List any alergies you have.  If none put 'none'.  Put 'done' when done."
  algery_input = false
  until algery_input
  alergies = gets.chomp
    if alergies == "done" || alergies =="none"
      puts "Thanks!!"
      algery_input = TRUE
    else 
      puts "Any more?"
    end

    if current_year - birthyear == given_age
      testimony = TRUE
    else 
      testimony = FALSE
    end
  end

  if name == "drake cula" || name == "tu fang"
    puts "Definately a vampire."
  elsif testimony == TRUE && (bread == "yes" || health_ins == "yes")
    puts "Probably not a vampire."
  elsif testimony == FALSE && (bread == "no" && health_ins == "yes") || (bread == "yes" && health_ins == "no")
    puts "Probably a vampire"
  elsif testimony == FALSE && bread == "no" && health_ins == "no"
    puts "Almost certainly a vampire"
  else
    puts "Results inconclusive"
  end
end
until candidates == 0
  survey
  candidates= candidates - 1
  puts "#{candidates} left to process."
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."








	