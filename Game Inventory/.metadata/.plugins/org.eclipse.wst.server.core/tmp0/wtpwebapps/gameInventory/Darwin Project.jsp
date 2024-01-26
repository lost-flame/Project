<html>
<head>
<title>Darwin Project</title>
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
<input type="hidden" name="gameName" value="Darwin Project"/>
<div class="center">
</br>
<img src="dp.jpg">
<p style="font-size:24px;">
Darwin Project is a free-to-play multiplayer online battle royale game developed and 
published by Scavengers Studio. It was launched for Steam Early Access and Xbox Game 
Preview on March 9, 2018, and was released on both platforms on January 14, 2020, to 
coincide with the game's release on PlayStation 4. Player must not only survive extreme 
environmental conditions, track opponents, set traps, and utilize the Bait-N-blat technique 
in order to win, but also win the favor of a voting crowd and the all-seeing 11th player, 
the Show Director, who can tip the balance in any match by using specially made cards that 
can change the field. Supported languages are English, French, Italian, German, Spanish, 
Russian, Japanese, Polish and Korean.
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/G6aIS4NUif4?autoplay=1">
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



