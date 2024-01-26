let firstName = document.getElementById('firstName');
let middleName = document.getElementById('middleName');
let lastName = document.getElementById('lastName');
let mobileNumber = document.getElementById('mobileNumber');
let address = document.getElementById('address');
let email = document.getElementById('email');
let password = document.getElementById('password');
let securityAnswer = document.getElementById('securityAnswer');

let validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

function validate()
{   
	let check = /^[A-Za-z]+$/;//only english alphabets
	if(!firstName.value.match(check) || !middleName.value.match(check)
	   || !lastName.value.match(check))
	{
		alert('Please enter alphabet characters in name field');
		return false;
	}
	if(/^[A-Za-z0-9]*\s*$/.test(address.value)){//empty value
		alert('Please enter valid address');
		return false;
	}
	if(!email.value.match(validRegex)){//email validation
		alert('Please enter valid email');
		return false;
	}	///\s/g.test(securityAnswer.value)
	if(/^[A-Za-z0-9]*\s*$/.test(securityAnswer.value)){//empty value
		alert('Please enter valid security answer');
		return false;
	}
	return true;
}

function mobile(){
	let phoneno = /^\d{10}$/;//check phone length is 10 digits only
		if(mobileNumber.value.match(phoneno))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 10 digit mobile number");
		   return false;
	     }
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
	if(pass() && validate() && mobile()){
		return true;
	}
	else{
		return false;
	}
}