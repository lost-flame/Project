let email = document.getElementById('email');
let password = document.getElementById('password');

let validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

function validate()
{  
	if(!email.value.match(validRegex)){//email validation
		alert('Please enter valid email');
		return false;
	}
	return true;
}

function pass(){//password validate
	if(password.value.match(/[a-z]/g) && 
	   password.value.match(/[A-Z]/g) && 
	   password.value.match(/[0-9]/g) && 
	   password.value.match(/[^a-zA-Z\d]/g) && 
	   password.value.length >= 8){
		return true;
	}
	else{
		alert('Please enter atleast 1 '+
			  'uppercase character, '+
			  '1 lowercase character, '+
			  '1 digit, 1 special character, '+
			  'Minimum 8 characters');
		return false;
	}
}

function right(){
	if(validate() && pass()){
		return true;
	}
	else{
		return false;
	}
}