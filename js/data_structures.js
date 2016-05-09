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