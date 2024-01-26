let securityAnswer = document.getElementById('securityAnswer');

function validate()
{   
	if(/^[A-Za-z0-9]*\s*$/.test(securityAnswer.value)){//empty value
		alert('Please enter valid security answer');
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