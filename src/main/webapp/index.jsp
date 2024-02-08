<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for centering the form */
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        input[type="text"], input[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<h2>Employee Registration</h2>

<form action="new" method="POST">
    <table>
        <tr>
            <td>Employee ID</td>
            <td> <input type="text" name="empid"/> </td>
        </tr>
        <tr>
            <td>First name</td>
            <td> <input type="text" name="fname"/> </td>
        </tr>
        <tr>
            <td>Last name</td>
            <td> <input type="text" name="lname"/> </td>
        </tr>
        <tr>
            <td></td>
            <td> <input type="submit" Value="Register"/> </td>
        </tr>
    </table>
</form>

</body>
</html>
