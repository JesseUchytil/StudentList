<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a new Student</title>
</head>
<body>
<h1>Add a new student</h1>
<mvc:form modelAttribute="student" action="result.mvc">
	<table>
		<tr>
			<td><mvc:label path="firstname">First Name</mvc:label></td>
	        <td><mvc:input path="firstname" /></td>
		</tr>
		<tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" /></td>
	    </tr>
		<tr>
	        <td><mvc:label path="birthdate">Date of Birth</mvc:label></td>
	        <td><mvc:input path="birthdate" /></td>
	    </tr>
        <tr>
	        <td><mvc:label path="gender">Gender</mvc:label></td>
	        <td><mvc:radiobuttons path="gender" /></td>
	    </tr>
		<tr>
	        <td><mvc:label path="semestersattended">Number of semesters attended</mvc:label></td>
	        <td><mvc:input path="semestersattended" /></td>
	    </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>
</mvc:form>
</body>
</html>