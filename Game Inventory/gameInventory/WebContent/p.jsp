<html>
<head>
<title>Assassin's Creed</title>
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

<form action="add.jsp">
<input type="hidden" name="gameName" value="Call of Duty Modern Warfare"/>
<div class="center">
</br>
<img src="codmw.jpg">
<p style="font-size:24px;">
Call of Duty: Modern Warfare is a first-person shooter video game developed by Infinity Ward 
and published by Activision. Serving as the sixteenth overall installment in the Call of Duty 
series, as well as a reboot of the Modern Warfare sub-series, it was released on 
October 25, 2019, for Microsoft Windows, PlayStation 4, and Xbox One.

The game takes place in a realistic and modern setting. The campaign follows a CIA officer and 
British SAS forces as they team up with rebels from the fictional country of Urzikstan, 
combating together against Russian forces who have invaded the country. The game's Special 
Ops mode features cooperative play missions that follow up the campaign's story. 
The multiplayer mode supports cross-platform multiplayer and cross-platform progression for 
the first time in the series. It has been reworked for gameplay to be more tactical and 
introduces new features, such as a Realism mode that removes the HUD as well as a form of the 
Ground War mode that now supports 64 players.

Infinity Ward began working on the game soon after the release of their 2016 title Call of 
Duty: Infinite Warfare. They introduced an entirely new engine for the game, which allows for 
new performance enhancements such as more detailed environments and ray-tracing capabilities. 
For the campaign, they took influence from real-life conflicts, such as the Syrian Civil War 
and terrorist incidents that have occurred in London. For the multiplayer, they scrapped the 
franchise's traditional season pass and removed loot boxes, enabling them to distribute free 
post-launch content to the playerbase in the form of "Seasons".

The game received a mixed pre-release reception for its mature subject matter, but was 
released to positive reviews with praise for its gameplay, story, multiplayer, and graphics; 
however, some criticized the handling of the campaign's subject matter as well as balancing 
issues in the multiplayer. In addition, there was controversy regarding the single-player 
campaign's depiction of the Russian military.
</p>
</br>
<center><iframe width="600" height="400" src="https://www.youtube.com/embed/zu3wZ-_IKrM?autoplay=1">
</iframe></center>
</br>	
<span class="span1">Price: Rs.2500</span>
<input type="hidden" name="price" value="2500"/>
<input type="submit" value="Purchase"/>
<span class="span2">Quantity<input type="text" id="quantity" name="quantity" required maxlength=1 size=1/></span>
</div>
</form>

</body>
</html>



