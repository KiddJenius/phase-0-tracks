
function ReverseWord(baseword) {
  var newStr = ""
for (var i = baseword.length - 1; i >= 0; i--) {
  newStr += baseword[i];
  }
  return newStr
}
var stored = ReverseWord("hello")

if (1==1) {	
	console.log(stored);
}
