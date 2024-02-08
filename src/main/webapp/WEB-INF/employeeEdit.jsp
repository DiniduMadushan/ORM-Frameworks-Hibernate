<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        padding: 20px;
    }
    
    h2 {
        margin-bottom: 20px;
    }
    
    .form-container {
        max-width: 500px;
        margin: 0 auto;
        border: 2px solid red; /* Add red color border */
        padding: 20px;
        border-radius: 10px; /* Add border radius for better appearance */
    }
</style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="text-center">Update Employee</h2>

        <jsp:useBean id="emp" class="my.app.entity.Employee" scope="request"/>

        <form action="update" method="POST">
            <div class="form-group row">
                <label for="empid" class="col-sm-3 col-form-label">Employee ID</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="empid" name="empid" value="<%=emp.getEmpid()%>"/>
                </div>
            </div>
            <div class="form-group row">
                <label for="fname" class="col-sm-3 col-form-label">First Name</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="fname" name="fname" value="<%=emp.getFirstname()%>"/>
                </div>
            </div>
            <div class="form-group row">
                <label for="lname" class="col-sm-3 col-form-label">Last Name</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="lname" name="lname" value="<%=emp.getLastname()%>"/>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <input type="submit" class="btn btn-primary" value="Update"/>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
