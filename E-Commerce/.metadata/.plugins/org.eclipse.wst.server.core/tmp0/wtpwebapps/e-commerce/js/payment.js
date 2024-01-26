let fullName = document.getElementById('fullName');
let state = document.getElementById('state');
let city = document.getElementById('city');
let address = document.getElementById('address');
let email = document.getElementById('email');
let zipCode = document.getElementById('zipCode');
let nameOnCard = document.getElementById('nameOnCard');
let cardNumber = document.getElementById('cardNumber');
let expMonth = document.getElementById('expMonth');
let expYear = document.getElementById('expYear');
let cvv = document.getElementById('cvv');

let validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

function validate()
{   
	let check = /^[A-Za-z]+$/;//only english alphabets
	if(!fullName.value.match(check) || !city.value.match(check)
	   || !state.value.match(check) || !nameOnCard.value.match(check))
	{
		alert('Please enter alphabet characters in following fields: '+
			  'full name, city, state, name on card');
		return false;
	}
	if(/^[A-Za-z0-9]*\s*$/.test(address.value)){//empty value
		alert('Please enter valid address');
		return false;
	}
	if(!email.value.match(validRegex)){//email validation
		alert('Please enter valid email');
		return false;
	}
	return true;
}

function zipcode(){
	let zipCodeNo = /^\d{6}$/;//check zipcode length is 6 digits only
		if(zipCode.value.match(zipCodeNo))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 6 digits zip code");
		   return false;
	     }
}

function cardnumber(){
	let cardNumbereNo = /^\d{16}$/;//check cardnumber length is 6 digits only
		if(cardNumber.value.match(cardNumbereNo))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 16 digits card number");
		   return false;
	     }
}

function expmonth(){
	let expMonthNo = /^\d{2}$/;//check expmonth length is 2 digits only
		if(expMonth.value.match(expMonthNo))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 2 digits expiration month");
		   return false;
	     }
}

function expyear(){
	let expYearNo = /^\d{2}$/;//check expyear length is 2 digits only
		if(expYear.value.match(expYearNo))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 2 digits expiration year");
		   return false;
	     }
}

function cvvNumber(){
	let cvvNo = /^\d{3}$/;//check cvvNumber length is 3 digits only
		if(cvv.value.match(cvvNo))
	     {
		   return true;
		 }
	   else
	     {
		   alert("Please enter 3 digits cvv number");
		   return false;
	     }
}

function right(){
	if(validate() && zipcode() && cardnumber() 
	   && expmonth() && expyear() && cvvNumber()){
		return true;
	}
}