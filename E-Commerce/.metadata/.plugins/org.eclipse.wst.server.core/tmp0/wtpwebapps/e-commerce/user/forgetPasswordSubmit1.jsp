<%@ page import="java.sql.*"%>
<html>
<body>
<%
try
{
	String securityQuestion = request.getParameter("securityQuestion");
	String securityAnswer = request.getParameter("securityAnswer");
	String email = (String)session.getAttribute("email");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps =con.prepareStatement("select  securityquestion, securityanswer from euser where securityquestion=? and securityanswer=?");
	ps.setString(1, securityQuestion);
	ps.setString(2, securityAnswer);
	ResultSet rs = ps.executeQuery();
if(rs.next())
{   
	response.sendRedirect("../user/forgetPassword2.jsp");
}
else
{%>
	<script>
	alert("Wrong Answer");
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