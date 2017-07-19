var colors = ["pink", "blue", "green", "yellow"];
var names = ["Mr. Ed", "Secretariat", "Scout", "QD McGraw"];

colors.push("checkered");
names.push("Valentine");

var combo = {};
combo[names[0]]=colors[1];
console.log(combo);

function Car(model, topSpeed, streetLegal) {
  this.model = model;
  this.topSpeed = topSpeed;
  this.streetLegal = streetLegal;
  this.racetrack = function() {console.log("1/2 mile racetime:"); console.log((Math.random(11))*10);};
}

var firstUp = new Car("Mustang", 160, true);
console.log(firstUp);
firstUp.racetrack()
var secondUp = new Car("Corvette", 140, true)
console.log(secondUp)
secondUp.racetrack()