<%@page import="my.app.entity.Employee"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        padding: 20px;
    }
    
    h2 {
        margin-bottom: 20px;
    }
    
    .table-sm {
        font-size: 0.8rem;
    }
    
    .table-container {
        display: flex;
        justify-content: center;
    }
    
    table {
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    
    th, td {
        padding: 8px;
        border: 1px solid #dee2e6;
    }
    
    th {
        background-color: #007bff;
        color: #fff;
        text-align: center;
    }
    
    td {
        text-align: center;
    }
    
    a {
        color: #007bff;
        text-decoration: none;
    }
    
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="table-container">
    <table class="table table-striped table-sm">
        <thead>
            <tr>
                <th>EmpId</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> emplist = (List<Employee>) request.getAttribute("emplist");
            
                for (Employee emp : emplist) {
            %>
                <tr>
                    <td><%=emp.getEmpid() %></td>
                    <td><%=emp.getFirstname() %></td>
                    <td><%=emp.getLastname() %></td>
                    <td>
                        <a href="update?empid=<%=emp.getEmpid() %>" class="btn btn-primary btn-sm">Edit</a>
                        <a href="delete?empid=<%=emp.getEmpid() %>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

</body>
</html>
