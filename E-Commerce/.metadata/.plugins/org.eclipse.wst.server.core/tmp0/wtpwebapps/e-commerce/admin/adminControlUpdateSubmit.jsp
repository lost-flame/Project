<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	String updateEpid = request.getParameter("updateEpid");
	String updateCategory = request.getParameter("updateCategory");
	String updateSubCategory = request.getParameter("updateSubCategory");
	String updateQuantity = request.getParameter("updateQuantity");
	String updatePrice = request.getParameter("updatePrice");
	
	PreparedStatement ps = con.prepareStatement("update eproducts set category=?, subcategory=?, quantity=?, price=? where epid=?");
	ps.setString(1, updateCategory);
	ps.setString(2, updateSubCategory);
	ps.setString(3, updateQuantity);
	ps.setString(4, updatePrice);
	ps.setString(5, updateEpid);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../admin/adminControl.jsp");
%>
</body>
</html>