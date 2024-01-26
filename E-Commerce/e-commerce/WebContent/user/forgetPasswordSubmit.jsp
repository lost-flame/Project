<%@ page import="java.sql.*"%>
<html>
<body>
<%
try
{
	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps =con.prepareStatement("select email from euser where email = ?");
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
if(rs.next())
{   
	session.setAttribute("id",email);
	response.sendRedirect("../user/forgetPassword1.jsp");
}
else
{%>
	<script>
	alert("Invalid E-mail");
	setTimeout(function() { window.location.href = '../user/forgetPassword.jsp'; } , 100);
	</script>
<% 
}
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>