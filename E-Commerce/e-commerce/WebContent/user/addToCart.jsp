<%@ page import="java.sql.*"%>
<head>
<title>Add To Cart</title>
<link rel="stylesheet" type="text/css" href="../css/addToCart.css">
</head>
<body>
<div class="layout">
<%
try{
	String userid = (String)session.getAttribute("userid");
	
	if(userid == null){%>
		<script>
		alert("Please login before adding the products...");
		setTimeout(function() { window.location.href = '../user/home.jsp'; } , 100);
		</script>
	<%}
	else{
	String scn=request.getParameter("scn");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");	
	PreparedStatement ps = con.prepareStatement("select * from eproducts where subcategory=?");
	ps.setString(1, scn);
	ResultSet rs = ps.executeQuery();
	rs.next();
%>
<div class="add">
<div>Adding products to the cart...</div>
<form action="addToCartSubmit.jsp" method="post" name="addToCart">
	<table>
	<tr>
	<td>Subcategory</td>
	<td>Price</td>
	<td colspan="2">Quantity</td>
	</tr>
	<tr>
	<td><input type="text" name="subcategoryName" value="<%=scn%>"/></td>
	<td><input type="text" name="price" value="<%=rs.getString(5)%>"/></td>
	<td><input type="text" name="quantity" placeholder="not more than <%=rs.getString(4)%>" required/></td>
	<td><input type="submit" value="Add"/></td>
	</tr>
	<tr>
	<td><div class="cancel"><a href="home.jsp">Cancel Adding</a></div></td>
	</tr>
	</table>
</form>
</div>
<%	
	con.close();
	}
}
catch(Exception e){
	System.out.println(e);
	}
%>
</div>
</body>
</html>