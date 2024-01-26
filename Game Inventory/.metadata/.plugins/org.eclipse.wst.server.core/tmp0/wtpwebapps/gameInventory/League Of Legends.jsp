<html>
<head>
<title>League Of Legends</title>
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
<input type="hidden" name="gameName" value="League Of Legends"/>
<div class="center">
</br>
<img src="lol.jpg">
<p style="font-size:22px;">
League of Legends (LoL) is a multiplayer online battle arena 
video game developed and published by Riot Games for Microsoft
 Windows and macOS. Inspired by the Warcraft III: The Frozen Throne 
 mod Defense of the Ancients, the game follows a freemium model and is
 supported by microtransactions. In League of Legends, players assume
 the role of a "champion" with unique abilities and battle against a team 
 of other player- or computer-controlled champions. The goal is usually to
destroy the opposing team's "Nexus", a structure that lies at the heart of a 
base protected by defensive structures, although other distinct game modes exist 
as well with varying objectives, rules, and maps. Each League of Legends match is 
discrete, with all champions starting off relatively weak but increasing in strength
 by accumulating items and experience over the course of the game. Champions span 
 a variety of roles and blend a variety of fantasy tropes, such as sword and sorcery, 
 steampunk, and Lovecraftian horror. Although the discrete nature of each match prohibits 
 an overarching narrative in-game, the various champions make up a large and ever-evolving 
 fictional universe developed by Riot Games through short stories, comics, cinematics, and 
 books
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/ggVB9gzwRIw?autoplay=1">
</iframe></center>
</br>
<span class="span1">Price: Rs.1200</span>
<input type="hidden" name="price" value="1200"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>

</body>
</html>



