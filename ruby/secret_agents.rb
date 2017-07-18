

def encrypt(answer)
  index = 0 
  until answer.length == index
    if answer[index] != " " && answer[index] != "z"
      answer[index] = answer[index].next
    elsif answer[index] == "z" 
      answer[index] = "a"
    else
      answer[index] = answer[index]
    end
    index += 1 
  end
  puts "Your password encrypted is \"#{answer}\"!"
end

def decrypt(answer)
  index = 0 
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  until answer.length == index
    if answer[index] != " " && answer[index] != "a"
      answer[index] = alphabet[alphabet.index(answer[index])-1]
    elsif answer[index] == "a"
      answer[index] = "z"
    else
      answer[index] = answer[index]
    end
    index += 1 
  end
  puts "Your password decrypted is \"#{answer}\"!"
end 

#Driver Code 

puts "Would you like to encrypt or decrypt?"
choice = gets.chomp 

if choice != "encrypt" && choice != "decrypt"
  puts "Not a choice, dude.."
else 
  puts "What password would you like to #{choice}?"
  answer = gets.chomp 
  if choice == "encrypt"
    encrypt(answer)
  else 
    decrypt(answer)
  end 
end 