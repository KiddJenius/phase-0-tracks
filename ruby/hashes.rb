#Bacic information from the user
#Name, age, number of children, annual income
#Give 4 different wood option types:
#Walnut, Padauk, Lyptus, Maple
#Give 5 different artist types for theme, pick 2
#Pollock, Dali, Warhol, Picasso, Kline
#Ask do you want carpet in the bedrooms? Yes or No

puts "Please give me your name"
gavename = gets.chomp

puts "What is your age?"
gaveage = gets.chomp.to_i

puts "How many children do you have?"
gavechild = gets.chomp.to_i

puts "What is your annual income?"
annual_income = gets.chomp.to_i

puts "Choose a wood type: Walnut, Padauk, Lyptus, Maple"
wood_type = gets.chomp

puts "Which artist would you like to be ispired by: Pollock, Dali, Warhol, Picasso, or Kline?"
artist_choice = gets.chomp

puts "Would you like carpet in the bedrooms? (Yes or No)"
carpet_choice = gets.chomp

design_qaire = {
	name: gavename,
	age: gaveage,
	numOfChildren: gavechild,
	income: annual_income,
	woodType: wood_type,
	artistType: artist_choice,
	carpet: carpet_choice
}

puts design_qaire

puts "Would you like to change any of your aswers? (If no changes put 'none')"
update = gets.chomp
if update == "none"
	puts "Great!"
else
	puts "Type the key you would like to change"
	keychange = gets.chomp
	puts "What would you like it to be?"
	newvalue = gets.chomp
end	

if keychange == "name"
	design_qaire[:name] = newvalue
elsif keychange == "age"
	design_qaire[:age] = newvalue
elsif keychange == "numOfChildren"
	design_qaire[:numOfChildren] = newvalue
elsif keychange == "income"
	design_qaire[:income] = newvalue
elsif keychange == "woodType"
	design_qaire[:woodType] = newvalue
elsif keychange == "artistType"
	design_qaire[:artistType] = newvalue
elsif keychange == "carpet"
	design_qaire[:carpet] = newvalue
else
	puts "That's not an answer!"
end

puts design_qaire








