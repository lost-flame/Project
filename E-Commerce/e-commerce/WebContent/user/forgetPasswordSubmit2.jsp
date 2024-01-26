<%@ page import="java.sql.*"%>
<html>
<body>
<%
	String password = request.getParameter("password");
	String email = (String)session.getAttribute("id");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps =con.prepareStatement("update euser set password=? where email = ?");
	ps.setString(1, password); 
	ps.setString(2, email);
	ps.executeUpdate();
	session.removeAttribute("id");
	response.sendRedirect("../user/loginPage.jsp");
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>