console.log("The script is running!");



function addPinkBorder(event) {
	console.log(event);
	event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);