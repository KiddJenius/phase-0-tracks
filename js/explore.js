/* get the anchor word to work with and store it in a variable
assign the index number of each letter of the anchor word.
start with the highest index number and list the remaining numbers by index largest to smallest.
store and print the result */

function reverseWord(anchor) {
  var newWord = ""
	for (var i = anchor.length - 1; i >= 0; i--){
		console.log(anchor[i])
  	newWord += anchor[i] 
	}
  return newWord
}


// 1. call the function to reverse a string
// 2. store that result as a variable
// 3. print variable if some condition is true


var choice = reverseWord("lollipop");

//is this what they were asking for?

if (1==1){ 
  console.log(choice);
}

