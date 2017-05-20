# assign spy: Jonathan Pollard
spy_name = "Jonathan Pollard"
#split name into array of items
spy_name =spy_name.split(' ')
#reverse order of array items
spy_name.reverse!
#return swapped name as string
newname = spy_name.join(' ')
#split swapped name into array as individual letters
swap_arry = newname.split('')
#change all vowel items to next vowel in series
swap_arry.each do |indivLetter| 
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

#for every letter that's not "aeiou":
swap_arry.each do |char|
  if char != "a" && char != "e" && char != "i" && char != "o" && char != "u"
     char.next!
  end
end
#change exclimation points to spaces
swap_arry.each do |point|
  if point == ("!")
    point.replace(" ")
  end
end

final_string = swap_arry.join('')
puts final_string
