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
#1 METHOD ONE: break number into an array
#2 start at array[-1] and move left until array[0], use counter
#3 METHOD TWO: push array digit in last positon to new array
#4			       move left one to second to last digit position, double it
#5             if doubled digit > 10, split and push to new array
#6             move left one positon and repeat step #3
#7 METHOD THREE: add all digits in the new array
#8                 if mod 10, return true == Valid 
#---------------------------------------------------------------------------------------------

#Account number to array of individual string numbers 
def breaker(account_number)
  account_number.to_s.split('')
end

#Starts with last number in array and pushes, moves left, doubles, then pushes
def converter(splitnum)
  x = splitnum.length
  new_array = []
  until x == 0 
    if x.even?
      new_array << splitnum[x-1].to_i
    else
      new_array << splitnum[x-1].to_i * 2
    end 
    x -= 1
  end
  new_array
end

puts "Account number please:"
account_number = gets.chomp 

#Stores value of original account number as a array into a variable 
splitnum = breaker(account_number)

#Makes new array of every other number doubled
converter(splitnum)

#Creates one long number array, eliminating double digit numbers
split_ary = converter(splitnum).reverse.join.split('')

#Iterates through long number array converting to number and adding each to get a total sum 
total = ""
split_ary.each {|num| total = num.to_i + total.to_i}

#Checks to see if original number is 16 digits and modulous 10 
if account_number.length != 16
  puts "Incorrect number of digits"
elsif total%10 == 0 && account_number.length == 16
  puts "Valid number"
else
  puts "INVALID"
end 