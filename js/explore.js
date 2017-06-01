/* get the anchor word to work with and store it in a variable
assign the index number of each letter of the anchor word.
start with the highest index number and list the remaining numbers by index largest to smallest.
store and print the result */

var anchor = "unicorn"
var newWord = ""
for (var i = anchor.length - 1; i >= 0; i--){
	console.log(anchor[i])
  newWord += anchor[i] 
}

console.log (newWord)

