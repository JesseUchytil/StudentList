<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Menu</title>
</head>
<body>
	<h1>Welcome to the Student Registry!</h1>
	<p>Here, you can do various operations on the list of registered<br />
	students.  You can do things like add new students and view all <br />
	currently enrolled students.  To do so, just click on the <br />
	appropriate link below.</p>
	
	<p><a href="form.mvc">Add a new student</a></p>
	<p><a href="viewAll.mvc">View currently enrolled students</a></p>
	<p><a href="deleteAll.mvc">Delete all records from database</a></p>
</body>
</html>