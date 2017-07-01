#takes a name as string, reverses first/last, breaks letters into array
def converter(name)
  name.downcase.split(' ').reverse.join.to_s.chars
end

#changes all vowels to spec in instructions
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

next_vowel(converter(name))