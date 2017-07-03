#each letter to array, reverse entire sequence, keeping spaces intact
def converter(name)
  name.downcase.split('').reverse.join.to_s.chars
end

#Change vowels to next and handle edge case
def next_vowel(split_ary)
  split_ary.each do |i|
    if i == "a"
      i.replace("e")
    elsif i == "e"
      i.replace("i")
    elsif i == "i"
      i.replace("o")
    elsif i == "o"
      i.replace("u")
    elsif i == "u"
      i.replace("a")
    else
      i == i 
    end
  end
end

#change non vowels to next, handle edge case 
def next_consonant(product)
  spot = 0 
  consonants = "bcdfghjklmnpqrstvwxy"
  while spot < product.length
    if product[spot] == "z"
      product[spot] = "b"
    elsif consonants.split('').include?(product[spot])
      next_spot = consonants.index(product[spot]) + 1 
      product[spot] = consonants[next_spot]
    end
    spot += 1 
  end
  product.reverse.join
end

#User interface stores key value pairs in hash 
nomore = false
list = {}
until nomore 
  puts "Give me a name to change to an alias: (type 'done' to exit')"
  name = gets.chomp
  if name == "done"
    nomore = true
  else 
  name_volchange = next_vowel(converter(name))
  translation = next_consonant(name_volchange).split.map(&:capitalize).reverse.join(' ')
  list[name] = translation
  end
end

#Output
list.each do |before, after|
  puts "Your name #{before} becomes \"#{after}\" as an alias!"
end 









