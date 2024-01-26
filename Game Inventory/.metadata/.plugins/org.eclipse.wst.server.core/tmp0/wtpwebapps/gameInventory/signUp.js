function call()
{
	
if(fname.value=="")
{
alert("Please enter the value");
fname.focus();
return false;
}
if(!fname.value.match(/^[a-zA-Z]+$/))
{
alert('First Name should be in text');
document.getElementById('fname').value="";
fname.focus();
return false;
}

if(lname.value=="")
{
alert("Please enter the value");	
lname.focus();
return false;
}
if(!lname.value.match(/^[a-zA-Z]+$/))
{
alert('Last Name should be in text');
document.getElementById('lname').value="";
lname.focus();
return false;
}

if(email.value=="")
{
alert("Please enter the value");
email.focus();
return false;
}

if(pswd.value=="")
{
alert("Please enter the value");	
pswd.focus();
return false;
}

}