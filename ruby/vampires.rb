puts "So what's your name?"
name = gets.chomp

current_year= 2017
def true_age
	puts "How old are you"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birthyear = gets.chomp.to_i
		if current_year - birthyear == age
			age == true
		else
			puts "The math doesn't add up.  Are you telling the truth?"
		end

end
true_age