
/*
	1. Declare Variable
	2. make function named reverse and give it a the variable as the parameter.
	3. Take the string and split it by each letter
	4. use the reverse method with .reverse
	5. join the now reversed letters back together.
	6. get it to print out to the log using console.log.
*/
var reversedString;

function reverse(reversedString){
	console.log(reversedString.split("").reverse().join(""));
}

helloStringReversed = reverse("hello String");

if (1 == 1){
  console.log(helloStringReversed);
}

reverse("There is One");
reverse("HELLO");
reverse("This is a string reversed.");