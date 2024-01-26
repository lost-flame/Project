<%@page import="java.sql.*" %>
<html>
<head>
<title> Sign UP Form </title>

<script src="signUp.js"></script>
<link rel="stylesheet" type="text/css" href="signUp.css">

</head>
<body>	

<div class="signup" align="center">
<table cellspacing="8" cellpadding="7" class="table">
</br></br>
<form name="signup" action="signupSubmit.jsp" onsubmit="return call()" method="post">

<tr>
<td colspan=2><h1>SIGN UP</h1></td>
</tr>

<tr>
<td>First Name</td>
<td><input type="text" id="fname" name="fname" maxlength="20" autocomplete="off" placeholder="Enter your first name" required/></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" id="lname" name="lname" maxlength="20" autocomplete="off" placeholder="Enter your last name" required/></td>
</tr>

<tr>
<td>E-mail</td>
<td><input type="email" id="email" name="email" autocomplete="off" placeholder="Enter your e-mail" required/></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="pswd" autocomplete="off" placeholder="Enter your password" required/></td>
</tr>

<tr>
<td>Security Question</td>
<td>
<select id="security" name="security">
<option value="What is your favourite color">What is your favourite color</option>
<option value="What is your favourite tv show">What is your favourite tv show</option>
</select>
</tr>

<tr>
<td></td>
<td>
<input type="text" id="answer" name="answer" maxlength="20" autocomplete="off" placeholder="Enter your answer" required/>
</td>
</tr>

<tr>
<td colspan=2><input type="submit" value="Sign Up" onclick="call" /></td>
</tr>

</form>

<tr>
<td align="center" colspan=2><a href="login.jsp">Already have an account</a></td>
</tr>

</table>
</div>
</body>
</html>



