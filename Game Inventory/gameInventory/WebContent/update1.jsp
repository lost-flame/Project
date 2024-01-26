<%@ page import="java.sql.*"%>
<html>
<head>
<title>Account Settings</title>
</head>
<body>
<%
try
{
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password = request.getParameter("pswd");
String security = request.getParameter("security");
String answer = request.getParameter("answer");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
PreparedStatement ps =con.prepareStatement("Update GI Set FIRST_NAME=?, LAST_NAME=? , EMAIL=?, PASSWORD=? , SECURITY=? , ANSWER=? Where EMAIL=? ");
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, email);
ps.setString(4, password);
ps.setString(5, security);
ps.setString(6, answer);
ps.setString(7, email);
ps.executeUpdate();
%>
    <script>
	alert("Record is updated");
	setTimeout(function() { window.location.href = 'aboutUs.jsp'; } , 100);
	</script>
<%
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>