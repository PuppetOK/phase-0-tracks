function longest_phrase(array){
	var lengthofphrase = []
	for (var i = 0; i < array.length; i++){
		lengthofphrase.push(array[i].length);
	}
	var longestPhrase = lengthofphrase[0];
	for (var i = 0; i < lengthofphrase.length; i ++){
		if (lengthofphrase[i] > longestPhrase){
			longestPhrase = lengthofphrase[i];
		}
	}
	return array[lengthofphrase.indexOf(longestPhrase)];
}

console.log(lengthofphrase(["long phrase", "longest phrase", "longer phrase"]));