<%@page import="java.sql.*" %>
<html>
<body>

<h1>HTML DOM Events</h1>
<h2>The onclick Event</h2>

<p>The onclick event triggers a function when an element is clicked on.</p>
<p>Click to trigger a function that will output "Hello World":</p>

<button onclick="myFunction()" value="true">Click me</button>

<p id="demo"></p>

<script>
function myFunction() {
 <% if(false)
	 response.sendRedirect("https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_onload"); %>
}
</script>

</body>
</html>
