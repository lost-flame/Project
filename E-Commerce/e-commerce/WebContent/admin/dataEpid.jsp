<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	String epid = request.getParameter("epid");
	String data = request.getParameter("data");
    
	PreparedStatement ps = con.prepareStatement("update eproducts set data=? where epid=?");
	ps.setString(1, data);
	ps.setString(2, epid);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../admin/adminControl.jsp");
%>
</body>
</html>