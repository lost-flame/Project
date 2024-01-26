<html>
<head>
<title> Login Page </title>

<script src="login.js"></script>
<link rel="stylesheet" type="text/css" href="login.css">

</head>
<body>

<div class="login" align="center">

<table cellspacing="10" cellpadding="5" class="table">
<form name="login" action="loginSubmit.jsp" onsubmit="call()" method="post">

<tr>
<td colspan=2><h1>LOGIN</h1></td>
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
<td colspan=2><input type="submit" value="Log In" /></td>
</tr>
</form>

<tr>
<td align="center" colspan=2><a href="forgetPswd.jsp">Forgot Password</a></td>
</tr>

</table>
</div>

</body>
</html>