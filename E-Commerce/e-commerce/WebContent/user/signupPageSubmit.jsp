<%@page import="java.sql.*" %>
<html>
<body>
<%
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String gender = request.getParameter("gender");
	String mobileNumber = request.getParameter("mobileNumber");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String securityQuestion = request.getParameter("securityQuestion");
	String securityAnswer = request.getParameter("securityAnswer");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps1 = con.prepareStatement("select email from euser where email=?");
	ps1.setString(1, email);
	ResultSet rs = ps1.executeQuery();

if(rs.next())
{%>
	<script>
	alert("Please enter different e-mail");
	setTimeout(function() { window.location.href = '../user/signupPage.jsp'; } , 100);
	</script>
<% 
}
else
{
	PreparedStatement ps =con.prepareStatement("insert into euser values(eid.nextval,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, firstName);
	ps.setString(2, middleName);
	ps.setString(3, lastName);
	ps.setString(4, gender);
	ps.setString(5, mobileNumber);
	ps.setString(6, address);
	ps.setString(7, email);
	ps.setString(8, password);
	ps.setString(9, securityQuestion);
	ps.setString(10, securityAnswer);
	ps.executeUpdate();
	response.sendRedirect("../user/loginPage.jsp");
}
	con.close();
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>