<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/category.css">
</head>
<body>
<div class="layout">
	<div class="top-space"></div>
	<div class="top">
	<nav>
	<ul>
	<li><a href="home.jsp">Home</a></li>
	<li><a href="electronics.jsp">Electronics</a></li>
	<li><a href="men's fashion.jsp">Men's Fashion</a></li>
	<li><a href="women's fashion.jsp">Women's Fashion</a></li>
	<div class="searchBox">
	<input type="search" name="searchbox" id="searchbox" placeholder="searching..." align="center"/>
	<button onclick="window.location.href = '../user/searchboxSubmit.jsp';">Search</button>
	</div>
	<% 
	String userid = (String)session.getAttribute("userid");
	if(userid == null){%>
	<li><a href="signupPage.jsp">Sign Up</a></li>
	<%}
	else{%>
	<div class="dropdown">
	<div class="dropdownButton">User</div>
	<div class="dropdownContent">
	<a href="updatePage.jsp">Account</a>
	<a href="cartPage.jsp">Cart</a>
	<a href="logoutPage.jsp">Log Out</a>
	</div>
	</div>
	<%}%>
	</ul>
	</nav>
	</div>
	
	<div class="content">
	<div class="left">
	<table>
<%
	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");
	
	PreparedStatement ps =con.prepareStatement("select gender from euser");
	ResultSet rs = ps.executeQuery();

while(rs.next())
{
	String getQueryResult = rs.getString(1);
%>
	<tr>
	<td>
	<div class="categoryDropdown">	
	<div class="categoryDropdownButton"><%=rs.getString(1)%></div>
	<div class="categoryDropdownContent">
<%
	/*ps =con.prepareStatement("select esubcategory from euser where ecategory=?");
	ps.setString(1, getQueryResult);
	rs = ps.executeQuery();*/
	ps =con.prepareStatement("select email from euser");
	ResultSet rs1 = ps.executeQuery();//query will repeat until above query finished exceuted 
	while(rs1.next())
	{%>	
	<a href="updatePage.jsp"><%=rs1.getString(1)%></a>
	<%}%>
	</div>
	</div>
	</td>
	</tr>
<%} %>
	</table>	
	</div>
	
	<div class="middle">
	<table>
	<tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/a.jpg" /></td>
	</tr>
	<tr>
	<td><a href="home.jsp">Home</a></td>
	<td><a href="home.jsp">Home</a></td>
	</tr>
	<tr>
	<td><img src="../images/a.jpg" /></td>
	<td><img src="../images/a.jpg" /></td>
	</tr>
	<tr>
	<td><a href="home.jsp">Home</a></td>
	<td><a href="home.jsp">Home</a></td>
	</tr>
	</table>
	</div>
	
	<div class="right">
	<table>
	<tr>
	<td><a href="../admin/loginPage.jsp" target="_blank">Admin</a></td>
	</tr>
	<tr>
	<td><a href="home.jsp">Query</a></td>
	</tr>
	</table>
	</div>
	</div>
</div>
</body>
</html>