// release 0
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

//release 1

function matching_keys_and_value(hash1, hash2){
	for(var x in hash1){
		for (var y in hash2){
			if (x == y){
				if (hash1[x] == hash2[y]){
					return true;
				}
			}
		}
	}
	return false;
}
// Driver code
// Release 0 ===================

//console.log(longest_phrase(["long phrase", "longest phrase", "longer phrase"]));

//Release 1 ====================

var hash = { name: "Ted", age: 27, job: "student"};
var hash1 = { name: "Bob", age: 27, job: "student"};
var hash2 = { name: "Allie", age: 23, job: "driver"};
console.log(matching_keys_and_value(hash, hash1));
console.log(matching_keys_and_value(hash, hash2));
