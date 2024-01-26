let email = document.getElementById('email');
let validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
function validate()
{   
	if(!email.value.match(validRegex)){//email validation
		alert('Please enter valid email');
		return false;
	}
	return true;
}

function right(){
	if(validate()){
		return true;
	}
	else{
		return false;
	}
}