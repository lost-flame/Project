<%@page import="java.sql.*" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password = request.getParameter("pswd");
String security = request.getParameter("security");
String answer = request.getParameter("answer");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
PreparedStatement ps1 = con.prepareStatement("Select EMAIL From GI Where EMAIL=? ");
ps1.setString(1, email);
ResultSet rs = ps1.executeQuery();

if(rs.next())
{%>
	<script>
	alert("E-mail alreay exists, please enter a different Email");
	setTimeout(function() { window.location.href = 'signUp.jsp'; } , 100);
	</script>
<%
}
else
{
	PreparedStatement ps =con.prepareStatement("Insert Into GI Values(seq_gi.nextval,?,?,?,?,?,?)");

	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, email);
	ps.setString(4, password);
	ps.setString(5,security);
	ps.setString(6, answer);
	ps.executeUpdate();
	response.sendRedirect("login.jsp");
}
con.close();
}
catch(Exception e){
	out.println(e);
}

%>
</body>
</html>