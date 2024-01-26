<%@ page import="java.sql.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String quantity = (String)session.getAttribute("quantity");
	String scn = (String)session.getAttribute("scn");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	
	PreparedStatement ps =con.prepareStatement("select quantity from eproducts where subcategory=?");
	ps.setString(1, scn);
	ResultSet subCategoryQuantityResultSet = ps.executeQuery();
	subCategoryQuantityResultSet.next();
	
	String totalQuantity = subCategoryQuantityResultSet.getString(1);
	
	int integerQuantity = Integer.parseInt(totalQuantity) - Integer.parseInt(quantity);
	if(integerQuantity <= 0){
		integerQuantity = 0;
	}
	String quantityFinal = Integer.toString(integerQuantity);
	
	ps = con.prepareStatement("update eproducts set quantity=? where subcategory=?");
	ps.setString(1, quantityFinal);
	ps.setString(2, scn);
	ps.executeUpdate();
	
	con.close();%>
	<script>
	alert("Thank You for buying the products from our website...");
	setTimeout(function() { window.location.href = '../user/home.jsp'; } , 100);
	</script>
<% //	response.sendRedirect("../user/home.jsp");
%>
</body>
</html>