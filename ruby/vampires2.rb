puts "So.. what's your name?"
name = gets.chomp
puts "How old are you?"
given_age = gets.chomp.to_i 
puts "Ok.  Then what year were you born?"
given_birthyear = gets.chomp.to_i  


if Time.new.year - given_birthyear == given_age
  puts "That math checks out."
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