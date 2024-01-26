<html>
<head>
<title>Prototype</title>
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
<input type="hidden" name="gameName" value="Prototype" />
<div class="center">
</br> <img src="p.png">
<p style="font-size: 24px;">Prototype (stylized as [PROTOTYPE])
is an open world action-adventure video game developed by Radical
Entertainment and published by Activision. The game was released in
North America on June 9, 2009 (PlayStation 3 and Xbox 360), in
southwestern parts of North America (Microsoft Windows) as well as
Oceania on June 10, and in Europe on June 12. Versions for
PlayStation 4 and Xbox One were released on July 14, 2015 alongside
the sequel as Prototype Biohazard Bundle. Separate versions of the
games became available in August 2015.[1] Set in Manhattan, the game
follows a powerful amnesiac shapeshifter named Alex Mercer who must
stop an outbreak of Redlight, a plague that mutates individuals into
hideous violent monsters. During his quest, Alex tries to uncover
his past while also coming into conflict with both the US military
and a black operations force called Blackwatch. Parallel to the
game's storyline is the ability to play the game as a sandbox-style
video game giving the player freedom to roam Manhattan.</p>
</br>
<center>
<iframe width="600" height="400" src="https://www.youtube.com/embed/Nc3XptLacMM?autoplay=1">
</iframe>
</center>
</br> <span class="span1">Price: Rs.1500</span> <input type="hidden" name="price" value="1500" /> <input type="submit" value="Purchase" />
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1 /></span>
</div>
</form>

</body>
</html>



