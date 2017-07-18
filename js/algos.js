
function longestPhrase(listOfPhrases) {

  // 1. Create Variable Outside Loop
  // 2. Modify Variable Inside Loop
  // 3. Return Result, after Loop
	
  var longestWord = "";
  for (var i = 0; i<= listOfPhrases.length - 1; i++) {
    if (listOfPhrases[i].length > longestWord.length) {
    	longestWord = listOfPhrases[i]
    }
  }
  return longestWord; 
}

longestPhrase(["long phrase","longest phrase","longer phrase"])
