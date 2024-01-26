<html>
<head>
<title>Log Out Page</title>
</head>
<body>
	<%
		session.removeAttribute("adminid"); 
		session.invalidate();	
		response.sendRedirect("loginPage.jsp");
	%>
</body>
</html>