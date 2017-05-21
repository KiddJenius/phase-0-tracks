

puts "Let's give you an alias.  Name please:"
user_input = gets.chomp
#method swaps name and downcase to string 
def rearranger(str)
str = str.split(' ')
final = str.reverse.join(' ')
final = final.downcase
end
swapped_name = rearranger(user_input)
#replaces vowels take care of edge case and remains downcase
def next_vowel(name)
  name = name.split('')
  name.each do |indivLetter| 
  if indivLetter == "a"
    indivLetter.replace("e")
  elsif indivLetter == "e"
    indivLetter.replace("i")
  elsif indivLetter == "i"
    indivLetter.replace("o")
  elsif indivLetter == "o"
    indivLetter.replace("u")
  elsif indivLetter == "u"
    indivLetter.replace("a")
  end
end
end

#runs next vowel and stores as array
vowel_changed_array = next_vowel(swapped_name)
#changes array name to one string
vowel_string = vowel_changed_array.join('')

#runs through created string assigning next without effecting vowel changes
def next_consonant(product)
  spot = 0 
  consonants = "bcdfghjklmnpqrstvwxyz"
  while spot < (product.length)
  if product[spot] == "z"
    product[spot] = "b"
  elsif consonants.split('').include?(product[spot])
    next_spot = consonants.index(product[spot]) + 1 
    product[spot] = consonants[next_spot]
  end
  spot += 1 
end
product
end
next_consonant(vowel_string)

#capitalizes all letters in front of spaces
stored_name = vowel_string.split.map(&:capitalize).join(' ')
puts "Your name #{user_input} becomes the alias of \"#{stored_name}\"."


