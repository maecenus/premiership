<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Confidence Login</title>
</head>

<body>
	<header>This is where you dorks log in!!</header><br>
	
	<form action="LoginServlet" method="post">
		<label for="username">username:</label> 
		<input type="text" id="username" name="username" />
		<label for="password">password:</label>
		<input type="password" id="password" name="password" />
		<input type="submit" value="Submit">
	</form>
	
	<p>${message}</p>

</body>
</html>
