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
	return str
end


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

#decrypt(encrypt("swordfish")) will return swordfish becasue encrypt inside the () runs moving each letter +1, then decrypt puts them back...returns swordfish

#get encrypt/decrypt from user
#ask them for a password
#if user encrypt, runs encrypt function; if decrypt run through decrypt function

def pswd_function()
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









