<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="../css/loginPage.css">
</head>
<body>
<div class="layout">
 <div class="inner">
 	<div class="heading">Login Page</div>
 	<form action="loginPageSubmit.jsp" name="loginPage" method="post">
 	<div class="content">
 	<div>
 	<div>E-mail</div><span></span>
 	<input type="text" name="email" id="email"  placeholder="Enter your email" maxlength="50" required/>
 	</div>
 	<div>
 	<div>Password</div><span></span>
 	<input type="password" name="password" id="password"  placeholder="Enter your password" maxlength="15" required/>
 	</div>
 	</div>
 	<div class="button">
	<button type="submit" onclick="return right();">Log-in</button>
	</div>
	<div class="bottom">
	<a href="forgetPassword.jsp">Forgot password</a>
	</div>
	</form>
 </div>

</div>
<script src="../js/loginPage.js"></script>
</body>
</html>