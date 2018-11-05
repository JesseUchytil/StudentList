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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
        <tr>
            <th>Class year</th>
        </tr>
		<c:forEach items="${all}" var="c">
	        <tr>
	            <td>${c.year}</td>
	        </tr>
		</c:forEach>
    </table>
    
	<p><a href="menu.mvc">Return to main menu</a></p>
	<p><a href="form.mvc">Add a new student</a></p>
	<p><a href="deleteAll.mvc">Delete all records from database</a></p>
</body>
</html>