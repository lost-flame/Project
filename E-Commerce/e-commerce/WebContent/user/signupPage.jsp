<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup Page</title>
<link rel="stylesheet" type="text/css" href="../css/signupPage.css">
</head>
<body>
<div class="outer">
<div class="heading">
Signup Page
</div>
<div class="inner">
	<table cellpadding="2">
	<form action="signupPageSubmit.jsp" name="signupPage" onsubmit="return right();" method="post">
	<tr>
	<td>First Name</td>
	<td><input type="text" name="firstName" id="firstName" placeholder="your first name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Middle Name</td>
	<td><input type="text" name="middleName" id="middleName" placeholder="your middle name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Last Name</td>
	<td><input type="text" name="lastName" id="lastName" placeholder="your last name" maxlength="30" required/></td>
	</tr>
	<tr>
	<td>Gender</td>
	<td>
	<select name="gender" id="gender" style="width: 100%;" required>
    <option value="male">Male</option>
    <option value="female">Female</option>
    </select>
	</td>
	</tr>
	<tr>
	<td>Mobile Number</td>
	<td><input type="text" name="mobileNumber" id="mobileNumber" maxlength="10" placeholder="your mobile number" required></td>
	</tr>
	<tr>
	<td>Address</td>
	<td><input type="text" name="address" id="address" placeholder="your address" maxlength="50" required/></td>
	</tr>
	<tr>
	<td>E-mail</td>
	<td><input type="email" name="email" id="email"  placeholder="your email" maxlength="50" required/></td>
	</tr>
	<tr>
	<tr>
	<td>Password</td>
	<td><input type="password" name="password" id="password"  placeholder="your password" maxlength="15" required/></td>
	</tr>
	<tr>
	<td>Security Question</td>
	<td>
	<select name="securityQuestion" id="securityQuestion" style="width: 100%;" required>
    <option value="Childhood Name">Childhood Name</option>
    <option value="Favourite TV Series">Favourite TV Series</option>
    </select>
	</td>
	</tr>
	<tr>
	<td></td>
	<td><input type="text" name="securityAnswer" id="securityAnswer" placeholder="your security question" maxlength="50" required/></td>
	</tr>
	<tr>
	<td colspan="2"><input type="submit" value="Create Account"/></td>
	</tr>
	<tr>
	<td colspan="2"><a href="loginPage.jsp">Already have an account</a></td>
	</tr>
	</form>
	</table>
</div>
</div>
<script src="../js/signupPage.js"></script>
</body>
</html>