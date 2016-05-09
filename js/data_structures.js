var colors = ["blue", "Grey", "Orange", "white"]
var names = ["Ed", "Horse Face", "Henry", "Bob"]

colors.push("Blackish-blue");
names.push("Mr.Long-legs");

console.log(colors);
console.log(names);

horseColors = {};

for (var i = 0; i < colors.length; i++){
	horseColors[names[i]] = colors[i];
}
console.log(horseColors);

function Car(make, model, condition, price){
	this.make = make;
	this.model = model;
	this.condition = condition;
	this.price = price;
	console.log("New car stats!:", make, model, "New or Used?:",condition, "price:", price);
	this.rev_engine = function() {console.log("VROOOOOOOOM")};
}
var carOne = new Car("Honda", "Civic", "used", 12000);
carOne.rev_engine();
var carTwo = new Car("BMW,", "M5,", "New", 40000);
carTwo.rev_engine();