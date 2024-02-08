<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>

</head>
<body>

<h2>Update employee</h2>

<jsp:useBean id="emp" class="my.app.entity.Employee" scope="request"/>

<form action="update" method="POST">
	<table>
		<tr>
			<td>Employee ID</td>
			<td> <input type="text" name="empid" value="<%=emp.getEmpid()%>"/> </td>
		</tr>
		<tr>
			<td>First name</td>
			<td> <input type="text" name="fname" value="<%=emp.getFirstname()%>"/> </td>
		</tr>
		<tr>
			<td>Last name</td>
			<td> <input type="text" name="lname" value="<%=emp.getLastname()%>"/> </td>
		</tr>
		<tr>
			<td></td>
			<td> <input type="submit" Value="Update"/> </td>
		</tr>
	</table>
</form>

</body>
</html>