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


