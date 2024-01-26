<%@page import="java.sql.*" %>
<%@page import="java.*" %> 
<html>
<body>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("select * from euser where email=? and password=?");
	ps.setString(1, email);
	ps.setString(2, password);
	ResultSet rs = ps.executeQuery();
if(rs.next())
{
	session.setAttribute("userid",email);
	response.sendRedirect("../user/home.jsp");
}
else{%>
	<script>
	alert("Please enter correct e-mail and password");
	setTimeout(function() { window.location.href = '../user/loginPage.jsp'; } , 100);
	</script>
<%}
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>