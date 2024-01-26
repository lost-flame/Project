let password = document.getElementById('password');

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
	if(pass()){
		return true;
	}
	else{
		return false;
	}
}
