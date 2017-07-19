/* get the anchor word to work with and store it in a variable
assign the index number of each letter of the anchor word.
start with the highest index number and list the remaining numbers by index largest to smallest.
store and print the result. */

function ReverseWord(baseword) {
  var newStr = ""
for (var i = baseword.length - 1; i >= 0; i--) {
  newStr += baseword[i];
  }
  return newStr
}
var stored = ReverseWord("unicorn")

if (1==1) {	
	console.log(stored);
}
