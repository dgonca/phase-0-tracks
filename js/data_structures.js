var colors = ["hot lava", "raspberry ombre", "deep blue", "jet black"];
var names = ["Master Knowledge", "Heinkein", "Paris", "Rose"]

colors.push("poppy purple")
names.push("Ghost Mike")

var horses = {};

// if colors.length && names.length {
	for (i = 0; i < colors.length; i++){
		horses[names[i]] = colors[i]
	}

	console.log(horses)
// };

// var car = {type: 'Jetta', color: 'blue', isItFast: true}

function Car(type, color, isItFast){
	console.log("Our new car:", this);

	this.type = type;
	this.color = color;
	this.isItFast = isItFast;
	this.drive = function() {
		if (this.isItFast){
			console.log("**zooooooooooom**");
		} else {
			console.log("**clug clug clug**");
		}
	}


	console.log("NEW CAR COMPLETE");
}

var car1 = new Car("Ferrari", "red", true)
var car2 = new Car("Grand Cherokee", "blue", false)
var car3 = new Car("Smart Car", "yellow", true)

car1.drive();


