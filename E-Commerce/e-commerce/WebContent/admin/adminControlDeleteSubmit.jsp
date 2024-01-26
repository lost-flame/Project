<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	String deleteEpid = request.getParameter("deleteEpid");
	
	PreparedStatement ps = con.prepareStatement("delete from eproducts where epid=?");
	ps.setString(1, deleteEpid);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../admin/adminControl.jsp");
%>
</body>
</html>