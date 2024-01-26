<html>
<head>
<title>Dreamfall The Longest Journey</title>
<script src="games.js"></script>
<link rel="stylesheet" type="text/css" href="games.css">
</head>
<body >

<div class="table">
<table class="table1" cellpadding="10" align="center" border=2px>
<td> <a href="aboutUs.jsp">Home</a> </td> 

<%
String id = (String)session.getAttribute("id");
if(id==null){
%>
<td> <a href="signUp.jsp">Sign-Up</a> </td>
<td> <a href="login.jsp">Log-In</a> </td>
<%
}
else{
%>
<td> <a> Game Inventory</a> </td>
<td> <a href="update.jsp">Account</a> </td>
<td> <a href="logout.jsp">Log-Out</a> </td>
<%} %>
</tr>
</table>
</div>

<div class="left">
<table class="table2" border=2px>
<tr>
<td align="center" style="text-decoration:none; color:white;"><b>Genres</b></td>
</tr>
<tr>
<td align="center"><a href="aboutUs.jsp">Action</a></td>
</tr>
<tr>
<td align="center"><a href="adventure.jsp">Adventure</a></td>
</tr>
<tr>
<td align="center"><a href="strategy.jsp">Strategy</a></td>
</tr>
<tr>
<td align="center"><a href="survival.jsp">Survival</a></td>
</tr>
<tr>
<td align="center"><a href="horror.jsp">Horror</a></td>
</tr>
<tr>
<td align="center"><a href="shooting.jsp">Shooting</a></td>
</tr>
</table>
</div>

<form action="add.jsp" onsubmit="return call()" method="post">
<input type="hidden" name="gameName" value="Dreamfall The Longest Journey"/>
<div class="center">
</br>
<img src="dtlj.jpg">
<p style="font-size:24px;">
Dreamfall: The Longest Journey, winner of multiple E3 awards as the best game in its genre, 
is the continuation of a saga that began in the award-winning The Longest Journey, considered 
to be one of the finest adventure games ever made. In Dreamfall, players are taken on an epic 
journey of exploration and adventure as they venture through a thrilling and emotional 
storyline. Dreamfall features a fully interactive world where beautiful music, stunning 
graphics, fascinating characters and unparalleled gameplay variety promises to bring the 
adventure genre into a new era. Prepare for a spiritual, fantastic and powerful gaming 
experience.
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/1AgpbybOhH8?autoplay=1">
</iframe></center>
</br>	
<span class="span1">Price: Rs.800</span>
<input type="hidden" name="price" value="800"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>

</body>
</html>



