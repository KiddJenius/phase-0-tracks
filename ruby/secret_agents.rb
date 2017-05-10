def encrypt() 
	puts "Give me a word to encrypt"
	str = gets.chomp
	counter = 0
	while counter < str.length
		str[counter]= str[counter].next
		counter += 1
	end
	puts str
end

encrypt()