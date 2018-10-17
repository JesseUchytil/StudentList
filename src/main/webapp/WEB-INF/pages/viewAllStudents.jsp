<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>

table, td, th {
    border: 1px solid black;
    border-collapse: collapse;
}

td, th {
	padding: 5px;
}

th{
	font-weight: bold;
}

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all enrolled students</title>
</head>
<body>

	<table>
        <tr>
            <th>Name</th>
            <th>Last name</th>
            <th>Date of birth</th>
            <th>Gender</th>
            <th>Semesters Attended</th>
        </tr>
		<c:forEach items="${all}" var="s">
	        <tr>
	            <td>${s.firstname}</td>
	            <td>${s.lastname}</td>
	            <td>${s.birthdate}</td>
	            <td>${s.gender}</td>
	            <td>${u.semestersattended}</td>
	        </tr>
		</c:forEach>
    </table>
    
	<p><a href="menu.mvc">Return to main menu</a></p>
	<p><a href="form.mvc">Add a new student</a></p>
	<p><a href="deleteAll.mvc">Delete all records from database</a></p>
</body>
</html>