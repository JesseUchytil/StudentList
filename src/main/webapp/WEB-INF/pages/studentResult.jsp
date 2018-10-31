<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student confirmation</title>
</head>
<body>
<h1>New Student confirmation</h1>
    <table>
        <tr>
            <td>Name</td>
            <td>${s.firstname}</td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>${s.lastname}</td>
        </tr>
        <tr>
            <td>Date of birth</td>
            <td>${s.birthdate}</td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>${s.gender}</td>
        </tr>
        <tr>
            <td>Semesters Attended</td>
            <td>${s.semestersattended}</td>
        </tr>
        <tr>
            <td>Class Year</td>
            <td>${s.classyear}</td>
        </tr>
    </table>
<a href = "viewAll.mvc">View all Users</a>
<a href = "menu.mvc">Return to main menu</a>
<a href = "form.mvc">Add another student</a>
</body>
</body>
</html>