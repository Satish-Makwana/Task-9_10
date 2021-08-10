<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>

	<h2>
		Id: ${user.id}<br>
		Name: ${user.name}<br>
	    Email:${user.email}<br>
		Password:${user.password}<br>
	</h2>
	
	<a href="userData"> show All data</a>
	
</body>
</html>