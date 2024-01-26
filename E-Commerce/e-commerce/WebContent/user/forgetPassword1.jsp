<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forget Password Page</title>
<link rel="stylesheet" type="text/css" href="../css/forgetPassword1.css">
</head>
<body>
<div class="layout">
 <div class="inner">
 	<div class="heading">Forget Password Page</div>
 	<form action="forgetPasswordSubmit1.jsp" name="forgetPassword" method="post">
 	<div class="content">
 	<div>
 	<div>Security Question</div><span></span>
	<select name="securityQuestion" id="securityQuestion" style="width: 100%;" required>
    <option value="Childhood Name">Childhood Name</option>
    <option value="Favourite TV Series">Favourite TV Series</option>
    </select><span></span>
    <input type="text" name="securityAnswer" id="securityAnswer" placeholder="your security question" maxlength="50" required/>
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
<script src="../js/forgetPassword1.js"></script>
</body>
</html>