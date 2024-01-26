<html>
<head>
<title>Forget Password Page</title>
<link rel="stylesheet" type="text/css" href="userPass1.css">

</head>
<body align="center" background="2.jpg">

<form name="passwordForm1" action="forgetPswd3.jsp" method="post">
<table align="center" cellpadding=5 cellspacing=5>

<tr>
<td align="center" colspan=2><h1>CHANGE PASSWORD</h1></td>
</tr>

<tr>
<td>Security Question</td>
<td>
<select id="security" name="security">
<option value="What is your favourite color">What is your favourite color</option>
<option value="What is your favourite tv show">What is your favourite tv show</option>
</select>
</td>
</tr>

<tr>
<td></td>
<td>
<input type="text" id="answer" name="answer" maxlength="20" autocomplete="off" placeholder="Enter your answer" required/>
</td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</tr>
</table>
</form>

</body>
</html>