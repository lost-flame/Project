<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<html>
<head>
<title>Games Details</title>
<style>

body
{
 background:url(3.jpg);
 background-size:cover;
 background-position:center;
 background-attachment: fixed;
}

div
{
    background:rgba(0,0,0,0.5);
    width:70%;
    font-size:30px;
    height:72px;
    color:white;
    margin-top:336px;
}
a
{
	background:rgba(0,0,0,0.5);
    width:70%;
    font-size:30px;
    height:72px;
    color:white;
    text-decoration:none;
}
a:hover
{
	color:yellow;
}
.center
{
    height:672px;
    overflow: scroll;
}
</style>
</head>
<body>
<center>

<%
String gameName = request.getParameter("gameName");
session.setAttribute("gameName",gameName);

String price = request.getParameter("price");

String quantity = request.getParameter("quantity");
session.setAttribute("quantity",quantity);
int quantity1 = Integer.parseInt(quantity);


int price1 = Integer.parseInt(price) * Integer.parseInt(quantity);
String price2=String.valueOf(price1);
session.setAttribute("price2",price2);
String stock1="";
String hold="";

try
{
	String id = (String)session.getAttribute("id");
	if(id == null){%>
		<div>   
		  <%="Please Log Into The Account"%>
		  <br>
		  <a href="aboutUs.jsp">Home</a>
		  </br>
		  </div> 
	<%}
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nikhil");

PreparedStatement ps1 = con.prepareStatement("select STOCK from GAME where G_NAME=?");
ps1.setString(1, gameName);
ResultSet rs = ps1.executeQuery();
rs.next();

String stockDb = rs.getString(1);

if(stockDb.equals("Out of Stock")){
	  stock1="Out of Stock";
	  session.setAttribute("stock1",stock1);
}
else {
int stock = Integer.parseInt(stockDb);

	 if(stock == 0){
		 %>

   	  <div>   
   	   	  <%="Out of Stock"%>  
   	      	  <br>
   	      <% 	 hold="Hold";   %>
   	            
   	      	  </br>
   	      	  </div>
   	  <% 
	  stock1="Out of Stock";
	  session.setAttribute("stock1",stock1);
	 }
      else if(stock <quantity1){
    	  %>

    	  <div>   
    	   	  <%="Limited Stock of "+gameName+" Game : "+stock%>  
    	      	  <br>
    	      <% 	 hold="Hold";   %>
    	            
    	      	  </br>
    	      	  </div>
    	  <%   stock1=String.valueOf(stock);
    	  session.setAttribute("stock1",stock1);   
      }
      else if(stock >=quantity1){
    	  int totalStock = stock - quantity1;
    	  stock1=String.valueOf(totalStock);
    	  session.setAttribute("stock1",stock1);
      }
}   
    	  

String totalStock1 = (String)session.getAttribute("stock1");

PreparedStatement ps =con.prepareStatement("UPDATE GAME SET STOCK =? Where G_NAME=?");
ps.setString(1, totalStock1);
ps.setString(2, gameName);
ps.executeUpdate();
if(hold.equals("Hold")){  // if quantity of game(input user) is more than 
	                      // stock(in database value)

%> 
<br>
<a href="aboutUs.jsp">Home</a>
</br>
<%}
else if(stock1.equals("Out of Stock")){
%>	<div>   
	  <%="Out of Stock"%>
	  <br>
	  <a href="aboutUs.jsp">Home</a>
	  </br>
	  </div>   
<%}
else{   // if stock(in database value) is more than quantity of game(input user) 
	response.sendRedirect("purchase.jsp");
con.close();
}
 
%>
<!--    if game is out of stock then print this, (no need)for now it is in comment
<div>   
    	  <%="Out of Stock"%>
    	  <br>
    	  <a href="aboutUs.jsp">Home</a>
    	  </br>
    	  </div>   
-->    	  
<%
}
catch(NumberFormatException e){
	out.println(e);
}
catch(Exception e){
	out.println(e);
}
%>
</center>

</body>
</html>