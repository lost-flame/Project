<%@ page import="java.sql.*"%>
<html>
<head>
<title>Forget Password Page</title>
</head>
<body>
<%
try
{
String email = request.getParameter("email");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
PreparedStatement ps =con.prepareStatement("Select EMAIL From GI Where EMAIL=? ");
ps.setString(1, email);
ResultSet rs = ps.executeQuery();
if(rs.next())
{   
	session.setAttribute("id",email);
	response.sendRedirect("forgetPswd2.jsp");
}
else
{%>
	<script>
	alert("Invalid E-mail");
	setTimeout(function() { window.location.href = 'login.jsp'; } , 100);
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