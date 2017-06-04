//reversing strings
//we have to use for loops

//call a function that reverses a string

//take the string and set a variable for a new empty string
//take the last letter of the string and place it in the new string, first
//then do that for each letter until you have done it for all of them


function reverseString(str){
	//where we will place the letters from the string into
	var newString = "";


	//here we are using the length of the string (accounting for arrays/strings starting at 0) and then iterating through
	//the letters of the string by counting backwards through the string to print the string backwards
	//inside the loop, we take the new string that we created and are adding the current letter we are iterating through
	//to the string. 
	for (i = str.length - 1; i >=0; i--){
		newString += str[i];
	}

	return newString;
	
}
var newVariable = reverseString("dominique");

if (1 == 1){
	console.log(newVariable);
} else{
	console.log("Something went wrong");
}





