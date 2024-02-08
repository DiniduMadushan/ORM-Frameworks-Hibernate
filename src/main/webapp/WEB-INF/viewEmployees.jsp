<%@page import="my.app.entity.Employee"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>

	<h2>Employee list</h2>
	
	<table border="1">
		<tr>
			<td>EmpId</td>
			<td>First name</td>
			<td>Last name</td>
			<td>Action</td>
		</tr>
		
		<%
			List<Employee> emplist=(List)request.getAttribute("emplist");
		
		
			for(Employee emp:emplist){
		%>		
			<tr>
				<td> <%=emp.getEmpid() %> </td>
				<td> <%=emp.getFirstname() %> </td>
				<td> <%=emp.getLastname() %> </td>
				<td> <a href="update?empid=<%=emp.getEmpid() %>">Edit</a> | <a href="delete?empid=<%=emp.getEmpid() %>">Delete</a>  </td>
		   </tr>
		
				
		<% 		
			}
		
		
		%>
		
		
		
	</table>
	

</head>
<body>

</body>
</html>