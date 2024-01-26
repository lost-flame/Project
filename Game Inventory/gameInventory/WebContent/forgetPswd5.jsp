<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
try
{
String password = request.getParameter("password");
String email = (String)session.getAttribute("id");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
PreparedStatement ps =con.prepareStatement("Update GI Set PASSWORD=? Where EMAIL=? ");
ps.setString(1, password);
ps.setString(2, email);
ps.executeUpdate();
session.removeAttribute("id");
response.sendRedirect("login.jsp");
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>