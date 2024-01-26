<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/subCategory.css">
</head>
<body>
<div class="layout">
	<div class="top-space"></div>
	<div class="top">
	<nav>
	<ul>
	<li><a href="home.jsp">Home</a></li>
	<div class="searchBox">
	<form action="../user/searchboxSubmit.jsp">
	<input type="search" size="47" name="searchbox" id="searchbox" placeholder="searching..." align="center"/>
	<input type="submit" value="Search"/>
	</form>
	</div>
	<% 
try{	
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
	<li><a href="signupPage.jsp">Sign Up</a></li>
	<%}
	else{%>
	<div class="dropdown">
	<div class="dropdownButton">User</div>
	<div class="dropdownContent">
	<a href="../user/updatePage.jsp">Account</a>
	<a href="../user/cart.jsp">Cart</a>
	<a href="../user/logoutPage.jsp">Log Out</a>
	</div>
	</div>
	<%}%>
	<li><a href="../admin/loginPage.jsp" target="_blank">Admin</a></li>
	</ul>
	</nav>
	</div>

	<div class="content">
	<div class="left">
	<table>
<%  String scn=request.getParameter("scn"); 
	session.setAttribute("scn", scn);

//	subcategory name as in "scn"
	System.out.println("fhfghgfhgfhgf "+scn);
	
	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("select distinct category from eproducts");
//	using Distinct sql because it will remove repitition(display on webpage) from database of category coulmn	
	ResultSet categoryResultSet = ps.executeQuery();
	
	String categoryName = "";
	String subCategoryName = "";
	
while(categoryResultSet.next())
{ 	
	categoryName = categoryResultSet.getString(1);
%>
	<tr>
	<td>
	<div class="categoryDropdown">	
	<div class="categoryDropdownButton">
	<a href="category.jsp?cn=<%=categoryName%>"><%=categoryName%></a>
	<%-- here i used URL Rewriting because when user open the link 
	     it will pass the name of the category to the current page 
	     and display all the subcategory name and their images --%>	
	</div>
	<div class="categoryDropdownContent">
<%
	PreparedStatement ps1 = con.prepareStatement("select subcategory from eproducts where category=?");
	ps1.setString(1, categoryName);
	ResultSet subCategoryResultSet = ps1.executeQuery();
	//query will repeat until above query finished exceuted 
	while(subCategoryResultSet.next())
	{	
		subCategoryName = subCategoryResultSet.getString(1);
	//	System.out.println(i+" "+categoryName+" "+subCategoryName);
	%>	
	<a href="subCategory.jsp?scn=<%=subCategoryName%>"><%=subCategoryName%></a>
	<%-- here i used URL Rewriting because when user open the link 
	     it will pass the name of the subcategory as well to the 
	     next page --%> 	
	<%}%>
	</div>
	</div>
	</td>
	</tr>
<% } %>
	</table>	
	</div>
	
<%//getting the image name from the database and 
  //fetching it from project directory as well
	ps = con.prepareStatement("select image from eproducts where subcategory=?");
	ps.setString(1, scn);
	ResultSet subCategoryImageResultSet = ps.executeQuery();
	subCategoryImageResultSet.next();
	
	String img = subCategoryImageResultSet.getString(1);
	System.out.println(img);
	String uploadPath = "../images/"+img;
	System.out.println("subcategory page: "+uploadPath);
%>	
	
	<div class="middle">
	<div class="image">
	<img src=<%=uploadPath%>  height="400" width="600"/>
	</div>
	
	<div class="data"><span></span>
	<center><%=scn%></center><span></span>
	<%
	PreparedStatement ps2 =con.prepareStatement("select data, price from eproducts where subcategory=?");
	ps2.setString(1, scn);
	ResultSet subCategoryDataResultSet = ps2.executeQuery();
	subCategoryDataResultSet.next();
	String data = subCategoryDataResultSet.getString(1);
	String price = subCategoryDataResultSet.getString(2);
	System.out.println("data "+data);
	System.out.println("price "+price);
	%>
	<%=data%>
	<span></span>
	<%=price%>
	<span></span></div>
	
	<%
	PreparedStatement ps3 =con.prepareStatement("select quantity from eproducts where subcategory=?");
	ps3.setString(1, scn);
	ResultSet subCategoryQuantityResultSet = ps3.executeQuery();
	subCategoryQuantityResultSet.next();
	String quantity = subCategoryQuantityResultSet.getString(1);
	//session.setAttribute("quantity", quantity);
	//System.out.println("quantity "+quantity);
	%>
		<%
	if(Integer.parseInt(quantity) <= 1){
	%>
	<center><div>Out of Stock</div></center>
	<%} 
	else{%>
	<div class="purchase">
	<div class="atc"><a href="addToCart.jsp?scn=<%=scn%>">Add to Cart</a></div>
	
	<form action="../user/payment.jsp" method="post">
	<div class="range">


	<input type="range" id="range" min="1" max="<%=quantity%>" oninput="this.nextElementSibling.value = this.value" required/>
	<input type="text" name="quantity" readonly>
	<input type="hidden" name="scn" value="<%=scn%>"/>
	</div>
	<div class="ptb">
	<input type="submit" value="Proceed to Buy"/>
	</div>
	</form>
	</div>
	<%} 
		con.close();
}
catch(Exception e){
	System.out.println(e);
}
	%>
	</div>

	<div class="right">
	<table>
	<tr>
	<td><a href="../user/feedback.jsp">Feedback</a></td>
	</tr>
	<tr>
	<td><a href="../user/query.jsp">Query</a></td>
	</tr>
	</table>
	</div>
	</div>
</div>
</body>
</html>