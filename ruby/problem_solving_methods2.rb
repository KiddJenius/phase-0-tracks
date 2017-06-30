
def checker(ary, digit)
  index = 0 
  ary.each do |num|
    if num == digit
      return index
    else
      index += 1 
    end
  end
  return nil 
end
array = [5, 13, 27, 44, 51, 79]
checker(array, 51)

