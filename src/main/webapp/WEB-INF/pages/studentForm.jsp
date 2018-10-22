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
	        <td><mvc:input path="firstname" id="firstname" /></td>
	        <td><label id="firstnamelabel" style="color:red;"></label></td>
		</tr>
		<tr>
	        <td><mvc:label path="lastname">Last Name</mvc:label></td>
	        <td><mvc:input path="lastname" id="lastname" /></td>
	        <td><label id="lastnamelabel" style="color:red;"></label></td>
	    </tr>
		<tr>
	        <td><mvc:label path="birthdate">Date of Birth</mvc:label></td>
	        <td><mvc:input path="birthdate" id="birthdate" /></td>
	        <td><label id="birthdatelabel" style="color:red;"></label></td>
	    </tr>
        <tr>
	        <td><mvc:label path="gender">Gender</mvc:label></td>
	        <td><mvc:radiobuttons path="gender" id="gender" /></td>
	        <td><label id="genderlabel" style="color:red;"></label></td>
	    </tr>
		<tr>
	        <td><mvc:label path="semestersattended">Number of semesters attended</mvc:label></td>
	        <td><mvc:input path="semestersattended" id="semestersattended" /></td>
	        <td><label id="semestersattendedlabel" style="color:red;"></label></td>
	    </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" id="submit" disabled />
	        </td>
	    </tr>
	</table>
</mvc:form>
</body>
<script type="text/javascript">
	var submit = document.getElementById("submit");
	var firstname = document.getElementById("firstname");
	var firstnamelabel = document.getElementById('firstnamelabel');
	var lastname = document.getElementById('lastname');
	var lastnamelabel = document.getElementById('lastnamelabel');
	var birthdate = document.getElementById('birthdate');
	var birthdatelabel = document.getElementById('birthdatelabel');
//	var gender = document.getElementById('gender');
//	var genderlabel = document.getElementById('genderlabel');
	var semestersattended = document.getElementById('semestersattended');
	var semestersattendedlabel = document.getElementById('semestersattendedlabel');

	if(firstname == null || lastname == null || birthdate == null || semestersattended == null){
		console.log("invalid objects");
		if(firstname == null)console.log("firstname");
		if(lastname == null)console.log("lastname");
		if(birthdate == null)console.log("birthdate");
//		if(gender == null)console.log("gender");
		if(semestersattended == null)console.log("semestersattended");
	}else{
		firstname.addEventListener("change", validate);
		lastname.addEventListener("change", validate);
		birthdate.addEventListener("change", validate);
//		gender.addEventListener("change", validate);
		semestersattended.addEventListener("change", validate);
		
	}

	firstnamelabel.innerHTML = "*";
	lastnamelabel.innerHTML = "*";
	birthdatelabel.innerHTML = "*";
//	genderlabel.innerHTML = "*";
	semestersattendedlabel.innerHTML = "*";

	function validate(){
		if(firstname.value == null || firstname.value.length < 2) firstnamelabel.innerHTML = "* Please enter a first name.";
		if(lastname.value == null || lastname.value.length < 2) lastnamelabel.innerHTML = "* Please enter a last name.";
		if(birthdate.value == null || birthdate.value.length < 6) birthdatelabel.innerHTML = "* Please enter a date of birth (MM/DD/YY).";
		if(semestersattended.value == null || semestersattended.value.length < 1) semestersattendedlabel.innerHTML = "* Please enter how many semesters the student has attended.";
		if(firstname.value == null || firstname.value.length < 2 ||
				lastname.value == null || lastname.value.length < 2 ||
				birthdate.value == null || birthdate.value.length < 6 ||
				semestersattended.value == null || semestersattended.value.length < 1){
			document.getElementById("submit").disabled = true;
			console.log("disabled base on input")
		}
		if(!(firstname.value == null || firstname.value.length < 2) &&
				!(lastname.value == null || lastname.value.length < 2) &&
				!(birthdate.value == null || birthdate.value.length < 6) &&
				!(semestersattended.value == null || semestersattended.value.length < 1)){
			document.getElementById("submit").disabled = false;
			console.log("got here");
		}
		
		if(firstname.value.length > 1)firstnamelabel.innerHTML = "";
		if(lastname.value.length > 1)lastnamelabel.innerHTML = "";
		if(birthdate.value.length > 5)birthdatelabel.innerHTML = "";
		if(semestersattended.value.length > 1)semestersattendedlabel.innerHTML = "";
	}
	
</script>
</html>