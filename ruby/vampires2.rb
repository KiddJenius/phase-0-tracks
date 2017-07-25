puts "How many candidates are we processing here?"
candidates = gets.chomp.to_i

until candidates == 0 
  puts "So.. what's your name?"
  name = gets.chomp
  
  puts "How old are you?"
  given_age = gets.chomp.to_i 
  
  puts "Ok.  Then what year were you born?"
  given_birthyear = gets.chomp.to_i  
  
  if Time.new.year - given_birthyear == given_age
    puts "That math checks out.  Hi #{name}."
    honest = true 
  else
    puts "Hmmm, that math dosen't check out....\"#{name.upcase}\"."
    honest = false 
  end 
  
  puts "Our company cafeteria serves garlic bread.  Should we get you some? (Y/N)"
  bread = gets.chomp.downcase 
  if bread == "y"
    likesbread = true 
  else
    likesbread = false
  end 
  
  puts "Would you like to enroll in the companies health insurance? (Y/N)"
  health_ins = gets.chomp.downcase 
  if health_ins == "y"
    needs_ins = true 
  else 
    needs_ins = false
  end 
 
  puts "Do you have any alergies, #{name}? If none, type 'none'.  Type 'done' when done."
  alergies = gets.chomp.downcase
  until alergies == "none" || alergies == "done" || alergies == "sunshine"
    puts "Any more?"
    alergies = gets.chomp.downcase
  end
  
  if (name.downcase == "tu fang" || name.downcase == "drake cula") && alergies != "sunshine"
    puts "Definately a vampire."
  elsif honest && likesbread && needs_ins && alergies != "sunshine"
    puts "Probably not a vampire."
  elsif !honest && (!likesbread && needs_ins) || (!needs_ins && likesbread) || alergies == "sunshine"
    puts "Probably a vampire."
  elsif !honest && !likesbread && !needs_ins
    puts "Almost certainly a vampire!"
  else 
    puts "Results inconclusive."
  end 
  candidates -= 1
  
  puts "#{candidates} left to process:"

end 
