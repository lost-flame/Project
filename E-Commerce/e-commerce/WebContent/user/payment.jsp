<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/payment.css">
<script src="../js/payment.js"></script>
</head>
<body>
<%
//if quantity is not selected then redirect to the home page
	String quantity = request.getParameter("quantity");
	String subCategory = request.getParameter("scn");
	
	String userid = (String)session.getAttribute("userid");
	
	session.setAttribute("quantity", quantity);
	System.out.println("quantity "+quantity);
	
	if(quantity.isEmpty() || userid == null){
		response.sendRedirect("../user/home.jsp");
	}
%>
	<div class="layout">
	  <form action="thankYou.jsp" name="paymentPage" method="post">
		<div class="content">
			<div class="left">
			<div class="heading">Billing Address</div></br>
			<div>
			<div>Full Name</div><span></span>
			<input type="text" id="fullName" maxlength="30" placeholder="Enter your full name" required />
			</div></br>
			<div>
			<div>Email</div><span></span>
			<input type="email" id="email" placeholder="Enter your email" required />
			</div></br>
			<div>
			<div>Address</div><span></span>
			<input type="text" id="address" placeholder="Enter your address" required />
			</div></br>
			<div>
			<div>City</div><span></span>
			<input type="text" id="city" placeholder="Enter your city" required />
			</div></br>
			<div class="gap">
			<div class="leftGap">
			<div>State</div>
			<input type="text" id="state" placeholder="Enter your state" required />
			</div>
			<div class="rightGap">
			<div>Zip Code</div>
			<input type="text" maxlength="6" id="zipCode" placeholder="Enter your zip code" required />
			</div>
			</div><span></span>
			</div>
			
			<div class="left">
			<div class="heading">Payment</div></br>
			<div>
			<div>Accepted Cards</div><span></span>
			 <img src="../images/cards.png"> 
			</div></br>
			<div>
			<div>Name On Card</div><span></span>
			<input type="text" id="nameOnCard" placeholder="Enter your name on card" required />
			</div></br>
			<div>
			<div>Card Number</div><span></span>
			<input type="text" maxlength="16" id="cardNumber" placeholder="Enter your card number" required />
			</div></br>
			<div>
			<div>Exp Month</div><span></span>
			<input type="text" maxlength="2" id="expMonth" placeholder="Enter your expiry month" required />
			</div></br>
			<div class="gap">
			<div class="leftGap">
			<div>Exp Year</div>
			<input type="text" maxlength="2" id="expYear" placeholder="Enter your expiry year" required />
			</div>
			<div class="rightGap">
			<div>CVV</div>
			<input type="text" maxlength="3" id="cvv" placeholder="Enter your cvv" required />
			</div>
			</div><span></span>	
			</div>	
		</div>
		<div class="button">
			<button type="submit" onclick="return right();">Proceed To Checkout</button>
		</div>
		
		<div class="button">
			<button type="button" onclick="window.location.href = 'home.jsp';">Cancel Payment</button>
		</div>
		</form>
	</div>
	
</body>
</html>