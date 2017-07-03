
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


def fib(num)
    new_ary = [0,1]
    x = 1
    num = num - 2 #compensate for having a starting array with 2 digits
  num.times do |y|
    y = new_ary[x-1] + new_ary[x] 
    new_ary << y
    x += 1 
  end 
  p new_ary
end

p fib(100)

#INSERTION SORT
#1 begin at the second left most element of array
#2 if the number to the left is larger, shift larger number one position to the right 
#3 insert number to left of greater number
#4 move to third positon and compare against second position, repeat step 2 
#5 continue until position n-1 