<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Password Page</title>
<link rel="stylesheet" type="text/css" href="../css/forgetPassword.css">
</head>
<body>
<div class="layout">
 <div class="inner">
 	<div class="heading">Forget Password Page</div>
 	<form action="forgetPasswordSubmit.jsp" name="forgetPassword" method="post">
 	<div class="content">
 	<div>
 	<div>E-mail</div><span></span>
 	<input type="text" name="email" id="email"  placeholder="Enter your email" maxlength="50" required/>
 	</div>
 	</div>
 	<div class="button">
	<button type="submit" onclick="return right();">Submit</button>
	</div>
	<div class="bottom">
	<a href="../user/home.jsp">Home</a>
	</div>
	</form>
 </div>

</div>
<script src="../js/forgetPassword.js"></script>
</body>
</html>