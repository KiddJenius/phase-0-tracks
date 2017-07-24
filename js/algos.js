// 1. Initialize placeholder
// 2. Compare length of first item in array to current value in placeholder
// 3. If item length is greater than what's in the placeholder, replace with item, repeat until end of list

function longestPhrase(listOfPhrases) {	
  var longestWord = "";
  for (var i = 0; i<= listOfPhrases.length - 1; i++) {
    if (listOfPhrases[i].length > longestWord.length) {
    	longestWord = listOfPhrases[i]
    }
  }
  console.log(longestWord);
  return longestWord;   
}

var listOfPhrases = ["the long phrase","the longest phrase","the longer phrase"]
var testPharse = ["a", "bc", "defghijk", "lmnopq", "rstuvw", "xyz"]
longestPhrase(listOfPhrases);
longestPhrase(testPharse)
