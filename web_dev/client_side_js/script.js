var headline = document.getElementById( "headline" );
// console.log(headline);
headline.style.backgroundColor = "lightblue";

var subheads = document.getElementsByClassName("subhead");

for (var i = 0; i < subheads.length; i++) {
	var element = subheads[i];
	element.style.fontWeight = "bold";
	element.style.fontStyle = "italic";

}