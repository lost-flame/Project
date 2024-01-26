<%@ page import="java.sql.*"%>
<html>
<body>
<%
try
{
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String mobileNumber = request.getParameter("mobileNumber");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("update eadmin set firstname=?, middlename=? , lastname=?,"+
	"gender=?, mobilenumber=?, address=?, email=?, password=? where email=?");
	ps.setString(1, firstName);
	ps.setString(2, middleName);
	ps.setString(3, lastName);
	ps.setString(4, gender);
	ps.setString(5, mobileNumber);
	ps.setString(6, address);
	ps.setString(7, email);
	ps.setString(8, password);
	ps.setString(9, email);
	ps.executeUpdate();
%>	
	<script>
	alert("Record is updated");
	setTimeout(function() { window.location.href = 'logoutPage.jsp'; } , 100);
	</script>
<%	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>