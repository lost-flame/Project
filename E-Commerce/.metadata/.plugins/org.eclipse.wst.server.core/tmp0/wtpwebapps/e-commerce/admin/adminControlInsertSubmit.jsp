<%@ page import="java.sql.*"%>
<html>
<head>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	String insertCategory = request.getParameter("insertCategory");
	String insertSubCategory = request.getParameter("insertSubCategory");
	String insertQuantity = request.getParameter("insertQuantity");
	String insertPrice = request.getParameter("insertPrice");
    
	PreparedStatement ps = con.prepareStatement("insert into eproducts(epid,category,subcategory,quantity,price) values(epid.nextval,?,?,?,?)");
	ps.setString(1, insertCategory);
	ps.setString(2, insertSubCategory);
	ps.setString(3, insertQuantity);
	ps.setString(4, insertPrice);
	ps.executeUpdate();
	
	con.close();
	response.sendRedirect("../admin/adminControl.jsp");
%>
</body>
</html>