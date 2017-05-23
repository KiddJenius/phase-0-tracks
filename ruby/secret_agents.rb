#to avoid and edge case, we replaced "z"'s with "a"'s then added +1
def encrypt(str) 
	counter = 0
	while counter < str.length
		if str[counter]=="z"
			str[counter]="a"
			counter += 1
		else
			str[counter]= str[counter].next
			counter += 1
		end
	end
	puts str
end

#set entire alphabet to a string for reference
def decrypt(str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < str.length
		str[counter]= alphabet[alphabet.index(str[counter])-1]
		counter +=1
	end
	puts str
	return str
end

#loop until one of two choices is given
def pswd_function
	puts "Would you like to encrypt or decrypt?"
		answer = gets.chomp.downcase
	while answer != "encrypt" && answer != "decrypt"
		puts "Please enter either 'encrypt' or 'decrypt'"
		answer = gets.chomp
	end
	puts "What is the password"
	password = gets.chomp
	if answer == "encrypt"
		encrypt(password)
	else 
		decrypt(password)
	end
end

pswd_function()









