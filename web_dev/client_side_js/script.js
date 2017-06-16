// console.log("help me");


var details = document.getElementById("details");
var button = document.getElementById("seemore");
details.hidden = true;
details.style.border = "2px solid red";

function showDetails(event){
	if (details.hidden == true){
		details.hidden = false;
	} else {
		details.hidden = true;
	}
	
}


button.addEventListener("click", showDetails);


// var loc = document.getElementById("location");
// var hob = document.getElementById("fav-hobby");
// var sch = document.getElementById("school");
// var at = document.getElementById("art");

// var location = document.createElement("P");
// location.textContent = "I am based in Chicago!";

// var hobby = document.createElement("P");
// hobby.textContent = "My favorite hobby is cooking";

// var school = document.createElement("P");
// school.textContent = "I go to School of the Art Institute of Chicago & now DevBootCamp!"

// var art = document.createElement("P");
// art.textContent = "I do photography"

// loc.appendChild(location);
// hob.appendChild(hobby);
// sch.appendChild(school);
// at.appendChild(art);



