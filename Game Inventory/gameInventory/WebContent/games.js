function call(){
	var x=document.getElementById("quantity").value;
	var change=/^[0-9]+$/;
	if(!x.match(change)){
		alert("Please input the numeric value");
		return false;
	}
}