<%@ page import="java.sql.*"%>
<%
try{
	String subcategoryName = request.getParameter("subcategoryName");
	String price = request.getParameter("price");
	String quantity = request.getParameter("quantity");
	String email = (String)session.getAttribute("userid");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	PreparedStatement ps = con.prepareStatement("insert into cart values(cid.nextval,?,?,?,?)");
	ps.setString(1, subcategoryName);
	ps.setString(2, price);
	ps.setString(3, quantity);
	ps.setString(4, email);
	ps.executeUpdate();
	
	ps = con.prepareStatement("select * from eproducts where subcategory=?");
	ps.setString(1, subcategoryName);
	ResultSet rs = ps.executeQuery();
	rs.next();
	String quantityTable = rs.getString(4);//getting quantity from the eproducts table
	
	int newQuantity = 	Integer.parseInt(quantityTable) - Integer.parseInt(quantity);
	quantity = Integer.toString(newQuantity);//updating value of eproducts quantity
	
	ps = con.prepareStatement("update eproducts set quantity=? where subcategory=?");
	ps.setString(1, quantity);
	ps.setString(2, subcategoryName);
	ps.executeUpdate();
	con.close();
	response.sendRedirect("../user/home.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>