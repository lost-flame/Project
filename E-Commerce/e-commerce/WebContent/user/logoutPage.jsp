<html>
<head>
<title>Log Out Page</title>
</head>
<body>
	<%try{
		session.removeAttribute("userid");
		session.invalidate();
		response.sendRedirect("../user/home.jsp");
	}
	catch(Exception e){
		System.out.println(e);
	}
	%>
</body>
</html>