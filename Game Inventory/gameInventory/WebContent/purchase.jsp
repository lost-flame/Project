<%@page import="java.sql.*" %>
<html>
<head>
<title>Purchase Form</title>
<style>

body
{
 background:url(11.jpg);
 background-size:cover;
 background-position:center;
}

.center{

 margin-left:150px;
  width:1226px;
  height:695px;
  margin-top:30px;
  background:rgba(0,0,0,0.5);

}

.center div table
{
  color:yellow;
}
h1
{
   color:#56FF33;
}
.center div table tr td
{
   font-size:35px;
   text-align:bold;
}

.submit
{
   border:none;
   outline:none;
   height:30px;
   font-size:20px;
   color:white;
   background:blue;
   border-radius:90px;
}

.center input[type="text"], input[type="number"]
{
   height:25px;
   font-size:20px;
   color:yellow;
   background-color:green;
}

.center select
{
   height:25px;
   size:20px;
   font-size:20px;
}
::placeholder
{
  color:yellow;
}
.center div table tr td select
{
  color:yellow;
  background:green;
  border:none;
  height:25px;
  border-bottom: 1px solid blue;
  font-size:18px;
}

.center div table tr td select,option
{
  background:green;
  height:25px;
  font-size:18px;
}
.submit:hover
{
    cursor:pointer;
    background: yellow;
    color:darkgreen;
}

</style>
</head>
<body >

<div class="center">

<div align="center">
<table cellspacing="8" cellpadding="7" class="table">
</br></br>
<form name="signup" action="purchaseSubmit.jsp" method="post">

<tr>
<td colspan=2 align="center"><h1>PURCHASE</h1></td>
</tr>

<tr>
<td>First Name</td>
<td><input type="text" name="fname" required/></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="lname" required/></td>
</tr>

<tr>
<td>Payment Mode</td>
<td>
<select id="payment" name="payment">
<option value="Debit Card">Debit Card</option>
</select>
</td>
</tr>

<tr>
<td>Card Number</td>
<td>
<input type="text" id="cardNumber" name="cardNumber" maxlength="16" size=16 autocomplete="off" placeholder="Enter card number" required/>
</td>
</tr>

<tr>
<td>Valid Until</td>
<td>
<input type="number" id="month" name="month" maxlength="2" min=1 max=12 autocomplete="off" placeholder="Month" required/>
<input type="number" id="year" name="year" maxlength="2" min=2020 max=2030 autocomplete="off" placeholder="Year" required/>
</td>
</tr>

<tr>
<td>CVC</td>
<td>
<input type="number" id="cvc" name="cvc" maxlength="3" min=100 max=999 autocomplete="off" placeholder="CVC" required/>
</td>
</tr>

<tr>
<td>Address</td>
<td>
<input type="text" id="address" name="address" maxlength="20" size=16 autocomplete="off" placeholder="Enter your address" required/>
</td>
</tr>

<tr>
<td align="center" colspan=3><input class="submit" type="submit" value="Purchase"/></td>
</tr>

</form>

</table>
</div>


</div>
</body>
</html>