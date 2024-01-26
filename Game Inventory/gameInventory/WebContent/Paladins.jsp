<html>
<head>
<title>Paladins</title>
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
<input type="hidden" name="gameName" value="Paladins" />
<div class="center">
</br> <img src="pal.jfif">
<p style="font-size: 24px;">Paladins: Champions of the Realm
takes place in a sci-fi fantasy world. There are elements of both
fantasy and science fiction, including medieval-looking soldiers who
use ranged weapons such as shotguns and assault rifles instead of
swords. In the world of Paladins, there is a conflict between two
factions; the Magistrate and the Resistance. Champions were
recruited in order to minimize casualties of regular foot soldiers.
The champions would be considered "special forces" as they are more
efficient at combat than a regular soldier. Not all champions are
committed, however. There were a few who did not pick sides during
the war, rather they would contract with both, rendering them
mercenaries. The rest of these special forces were committed to a
faction, either the magistrate or the paladins/resistance. There are
also minor factions in the game as well, the "Abyss", the "Thousand
Hands" and the "Pyre".</p>
</br>
<center>
<iframe width="600" height="400"
src="https://www.youtube.com/embed/0rV3-HXhky8?autoplay=1">
</iframe>
</center>
</br> <span class="span1">Price: Rs.1600</span> <input type="hidden" name="price" value="1600" /> <input type="submit" value="Purchase" />
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1 /></span>
</div>
</form>

</body>
</html>



