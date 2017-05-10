# def encrypt() 
# 	puts "Give me a word to encrypt"
# 	str = gets.chomp
# 	counter = 0
# 	while counter < str.length
# 		str[counter]= str[counter].next
# 		counter += 1
# 	end
# 	puts str
# end

# encrypt()

def decrypt()
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	puts "Give me a word to decrypt"
	str = gets.chomp
	counter = 0
	while counter < str.length
		str[counter]= alphabet[alphabet.index(str[counter])-1]
		counter +=1
	end
	puts str
end

decrypt()