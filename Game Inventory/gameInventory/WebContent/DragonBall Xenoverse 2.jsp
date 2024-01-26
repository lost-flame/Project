<html>
<head>
<title>DragonBall Xenoverse 2</title>
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
<input type="hidden" name="gameName" value="DragonBall Xenoverse 2"/>
<div class="center">
</br>
<img src="dbx2.jpeg">
<p style="font-size:24px;">
The game is very similar to its predecessor in terms of gameplay; it is mostly set in a 
series of 3D battle arenas mostly modeled after notable locations in the Dragon Ball 
universe, with the central hub being an expanded version of Toki-Toki City, called Conton 
City. As reported by the creators of the game, Conton City is seven times larger than 
Toki-Toki City. Players are able to freely traverse this new hub world, and in some areas 
are even capable of flying around, however this feature will not be available from start, 
instead being unlocked. Players will also be able to travel to other hubs such as the 
Namekian Village and Frieza's ship. Some skills will have to be learned through masters, 
like the previous game. However, some masters will be found exclusively in these extra hubs. 
Xenoverse 2 is the fourth Dragon Ball video game to feature character customization. Players 
are able to choose from the five races of the first game: Humans, Saiyans, Majins, Namekians 
and Frieza's race. The game also features race-specific quests, minigames and transformations 
(the latter of which was only available to Saiyans in the first game, via the Super Saiyan 
forms). Players also have a much greater role in the story, as some decisions will have to 
be made by them. Multiplayer servers are now able to hold up to 3000 players at once. 
The game also has a training mode called Training School. The player can use different 
kinds of ki blasts (Power, Homing, Rush, Paralyze and Bomb), and the ki blast type depends 
on the player's race or Super Soul. Another interesting element in the game is that players 
will be able to transfer their previous data from Dragon Ball XV 2's predecessor, Dragon 
Ball Xenoverse. This results in the game's details changing in a way that so players will 
be able to see the character known as the Toki Toki City's "Hero" in the middle of the 
square. Players also have the choice not to do this, and can choose from a selection of 
pre-made avatars to serve as the "Hero".
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/R7B7ZvcrOXQ?autoplay=1">
</iframe></center>
</br>	
<span class="span1">Price: Rs.1000</span>
<input type="hidden" name="price" value="1000"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>

</body>
</html>



