function longestPhrase(listOfPhrases) {

  // 1. Initialize placeholder
  // 2. Compaer length of first item in array to current value in placeholder
  // 3. If item length is greater than what's in the placeholder, replace with item, repeat until end of list
	
  var longestWord = "";
  for (var i = 0; i<= listOfPhrases.length - 1; i++) {
    if (listOfPhrases[i].length > longestWord.length) {
    	longestWord = listOfPhrases[i]
    }
  }
  return longestWord; 
}

longestPhrase(["long phrase","longest phrase","longer phrase"])