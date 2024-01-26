<%@page import="java.sql.*" %>
<html>
<head>
</head>
<body>
<%
String email = request.getParameter("email");
String password = request.getParameter("pswd");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
PreparedStatement ps = con.prepareStatement("select * from GI where EMAIL=? AND PASSWORD=? ");
ps.setString(1, email);
ps.setString(2, password);
ResultSet rs = ps.executeQuery();

if(rs.next())
{
	session.setAttribute("id",email);
	
	response.sendRedirect("aboutUs.jsp");
	
}
else{%>
	<script>
	alert("Wrong email and password");
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