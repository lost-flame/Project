<%@page import="java.sql.*" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<% 
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String payment = request.getParameter("payment");
session.setAttribute("payment",payment);
String cardNumber = request.getParameter("cardNumber");
String address = request.getParameter("address");
String month = request.getParameter("month");
String year = request.getParameter("year");
String cvc = request.getParameter("cvc");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
		
PreparedStatement ps =con.prepareStatement("Insert Into GAMEPURCHASE Values(?,?,?,?,?,?,?,?)");
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, payment);
ps.setString(4, cardNumber);
ps.setString(5, address);
ps.setString(6, month);
ps.setString(7, year);
ps.setString(8, cvc);
ps.executeUpdate();

response.sendRedirect("transaction.jsp");
con.close();
}

catch(Exception e){
	out.println(e);
}	
%>


</body>
</html>