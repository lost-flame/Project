<%@ page import="java.sql.*"%>
<html>
<head>
<title>Forget Password Page</title>
</head>
<body>
<%
try
{
	String security = request.getParameter("security");
	String answer = request.getParameter("answer");
	String email = (String)session.getAttribute("email");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps =con.prepareStatement("Select SECURITY, ANSWER From GI Where Security=? AND ANSWER=? ");
	ps.setString(1, security);
	ps.setString(2, answer);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{   
		response.sendRedirect("forgetPswd4.jsp");
	}
	else
	{%>
	<script>
	alert("Wrong Answer");
	setTimeout(function() { window.location.href = 'forgetPswd.jsp'; } , 100);
	</script>
	<%}
	con.close();
}
catch(Exception e)
{
   out.println(e);
}

%>
</body>
</html>