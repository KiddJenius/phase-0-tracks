# Given a credit card number we should be able to validate whether it is valid.
# (It's based on the Luhn algorithm (http://en.wikipedia.org/wiki/Luhn_algorithm),
# but I wouldn't suggest going to this unless you're really interested).
# The algorithm we're asking you to use is below.

# For this challenge, you will need to break down the algorithm into the following steps.
# You will probably want to break these down into individual methods.

# 1. Starting with the second to last digit, double every other digit until you reach the first digit.

# 2. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

# 3. If the total is a multiple of ten, you have received a valid credit card number!


# Example given 4563 9601 2200 1999
# Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# Step 3: 70 (total above) % 10 == 0
# Step 4: Valid
 

# Create one method called `#check_card` will need to return `true` or `false` when we call it.
# Your method needs to take a parameter of a credit card number that is exactly 16 digits
# otherwise you should send the user an error. Remember, methods can call many other methods,
# so you don't have to create one ginormous `#check_card` method if you don't want to.

# Make sure to pseudocode! These are big steps and they are a bit complicated, so break them down.

#---------------------------------------------------------------------------------------------

#method that breaks number into an array of individual numbers and starts at the last digit, adds it to an empty array, moves left one digit, doubles it adds it to empty array, moves left until reaches first digit at index 0 | OUTPUT = array of numbers every other doubled 
#method that splits everything into single digits and adds the total
#method that checks number of digits is 16 and modulous 10 == 0 and validates 

#---------------------------------------------------------------------------------------------


def double_breaker(card_number)
  split_ary = card_number.split('')
  split_doubled = []
  x = split_ary.length 
  until x == 0 
    if x.even?
      split_doubled << split_ary[x-1].to_i
    else
      split_doubled << split_ary[x-1].to_i * 2 
    end
    x -= 1 
  end
  split_doubled.reverse
end 

def split_add(second_ary)
  second_ary = second_ary.join.split('')
  total = ""
  second_ary.each  { |num| total = num.to_i + total.to_i }
  total 
end 

def check_card(card_number)  
  if card_number.length != 16
    puts "Invalid number of digits"
  elsif
    split_add(double_breaker(card_number)) % 10 == 0  
    valid = true
    puts "Validated"
  else
    puts "Invalid"
    valid = false
  end
end 

card_number = "4563960122001999"
check_card(card_number)