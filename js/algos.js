// take in an array 
//find the length of each the items
//whichever has the longest length, print that item

var array = ["long phrase","longest phrase","longer phrase"];
console.log(array)
var tracking = [];

for (i = 0; i < array.length - 1; i++){
	var len = array[i].length
	tracking.push(len)
}

var largestNumber = Math.max(...tracking)
var numberPosition = tracking.indexOf(largestNumber)
var wordPosition = array[numberPosition]
console.log("The longest word in the array is: " + wordPosition)

/////// release 1
//find a key-value match

//take in two objects
//look at the keys of each object
//if there is a match of keys, look at the value
//if there is a key-value match between the two objects, return true
//if there is no key-value match, return false

function matchTest(object1, object2){
	thereIsAMatch = false;

	//go through the two objects
	//take first key of each object
	//see if they match
	//object1[key1] =? object2[key1]
	//if that is true then look at : *if false move onto next key*
	//object1[key1][value] =? object2[key1][value]
	//if true - return true. if false move onto next key
	//object1[key2] =? object2[key2]
	//if true look at values - if false return false
	//object1[key2][value] =? object2[key2][value]
	//if true return true - if false return false
}


////// release 2
// generate random test data

//take in an integer
//integer sets the length of array
//creates an amount of strings
//strings should be from 1 letter to 10 letters long. 
//strings dont have to be real words

function randomTest(int){
	array = [];
	var randLimit = Math.floor(Math.random() * 10) + 1; 
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	var randLetter = alphabet[Math.floor(Math.random() * alphabet.length)];
	for (i = 0; i < int; i++){
		for (i = 1; i < randLimit; i++){
			var newWord = + randLetter;
		}

		array.push(newWord);
	}

	console.log(array);
}

randomTest(10)






