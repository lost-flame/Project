<%@ page import="java.sql.*"%>
<%
	String cid = request.getParameter("cid");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	//select subcategory and quantity from cart table to select delete items
	PreparedStatement ps = con.prepareStatement("select subcategory, quantity from cart where cid=?");
	ps.setString(1, cid);
	ResultSet rs = ps.executeQuery();
	rs.next();
	
	String subcategory = rs.getString(1);
	
	int quantity = Integer.parseInt(rs.getString(2));
	
	ps = con.prepareStatement("select quantity from eproducts where subcategory=?");
	ps.setString(1, subcategory);
	rs = ps.executeQuery();
	rs.next();
	
	//updating the new quantity value after remove the product
	//from user cart in cart eproducts table
	quantity = Integer.parseInt(rs.getString(1)) + quantity;
	String newQuantity = Integer.toString(quantity);
	
	ps = con.prepareStatement("update eproducts set quantity=? where subcategory=?");
	ps.setString(1, newQuantity);
	ps.setString(2, subcategory);
	ps.executeUpdate();
	
	//remove cid row from cart after deleting products from the user cart
	ps = con.prepareStatement("delete from cart where cid=?");
	ps.setString(1, cid);
	ps.executeUpdate();
	
	con.close();
	
	response.sendRedirect("../user/home.jsp");
%>