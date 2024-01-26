<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Password Page</title>
<link rel="stylesheet" type="text/css" href="../css/forgetPassword2.css">
</head>
<body>
<div class="layout">
 <div class="inner">
 	<div class="heading">Forget Password Page</div>
 	<form action="forgetPasswordSubmit2.jsp" name="forgetPassword" method="post">
 	<div class="content">
 	<div>
 	<div>New Password</div><span></span>
 	<input type="password" name="password" id="password"  placeholder="your password" maxlength="15" required/>
	<span></span><span></span><span></span>
	<input type="password" name="newPassword" id="newpassword"  placeholder="your password" maxlength="15" required/>
 	</div>
 	</div>
 	<div class="button">
	<button type="submit" onclick="return right();">Submit</button>
	</div>
	<span></span>
	<div class="bottom">
	<a href="../user/home.jsp">Home</a>
	</div>
	</form>
 </div>

</div>
<script src="../js/forgetPassword2.js"></script>
</body>
</html>