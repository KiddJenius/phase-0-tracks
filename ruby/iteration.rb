edm_djs = [
	'tim penner',
	'crystal method',
	'liquid zen',
	'deadmau5'
]

edm_bpm = {
	'prog house' => 128,
	'techno' => 120,
	'ambient' => 95,
	'minimal' => 130
}

puts "Before the array iteration:"
p edm_djs 

puts "After array iteration:"
  edm_djs.each do |dj| 
    puts "#{dj.upcase}"
end

p edm_djs
puts "After array mapping:"
  edm_djs.map! do |dj|
    dj.reverse
  end

p edm_djs
  
puts "Before the hash iteration:"
p edm_bpm

puts "After the hash iteration:"
  edm_bpm.each do |genere, half_speed|
    puts half_speed/ 2
  end

simple_array = [5, 10, 15, 20, 25]
p simple_array

# does not change array without (!)bang.
p simple_array.reject { |a| a<=15 }
p simple_array
p simple_array.select { |a| a%10==0 } 
p simple_array

#this will keep all items greater than 5 and change array
simple_array.keep_if { |a| a > 5 }
p simple_array

#this will take the new array and eliminate everything > 10, leaving only 10
testB = simple_array.delete_if { |a| a > 10 }
p simple_array

#build the array back up for final task
simple_array.insert(0, 5)
simple_array.insert(2, 15,20,25)
p simple_array


simple_hash = {
    'one' => 1,
    'three' => 3,
    'nine' => 9,
    'fifteen'=> 15,
    'twenty' => 20
}
p simple_hash

test3 = simple_hash.reject {|key, value| key.length >= 6 }
p test3
test4 = simple_hash.select {|word, number| number > 10}
p test4
simple_hash.keep_if {|word, number| number > 5}
p simple_hash
simple_hash.delete_if {|key, value| key != "twenty"}
p simple_hash

#Remove items until the conditon is false
final_array = simple_array.drop_while {|i| i < 15} 
p final_array
