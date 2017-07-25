// 1. Initialize placeholder
// 2. Compare length of first item in array to current value in placeholder
// 3. If item length is greater than what's in the placeholder, replace with item, repeat until end of list

function longestPhrase(listOfPhrases) {
  var longestWord = "";
  for (var i = 0; i<= listOfPhrases.length - 1; i++) {
    if (listOfPhrases[i].length > longestWord.length) {
    	longestWord = listOfPhrases[i];
    }
  }
  console.log("The list is: " + listOfPhrases);
  return longestWord;
}

function wordCreate() {
  var alphabet = "abcedfghijklmnopqrstuvwxyz";
  var newWord = "";
  var times = Math.floor((Math.random(10))*10);
  for (var i = 0; i <= times; i ++) {
    var x = (alphabet[Math.floor((Math.random()*alphabet.length))]);
    newWord = x + newWord;
  }
  return(newWord);
}

function generator(numOfWords) {
  var storage = [];
  for (var i = 0; i <= numOfWords-1; i++){
    storage.push(wordCreate());
  }
  return(storage);
}

function project(x) {
var final = longestPhrase(generator(x));
console.log("The longest word in the list is " + final + " with " + final.length + " letters.")
}

project(6);
