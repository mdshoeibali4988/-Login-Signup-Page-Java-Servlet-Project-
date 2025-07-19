<%@page import="dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    table {
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 16px;
        min-width: 600px;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
    }

    th {
        background-color: #007bff;
        color: #ffffff;
        text-transform: uppercase;
        font-size: 14px;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #e9f7ff;
    }

    td {
        color: #333333;
    }
    #delete{
    	padding: 4px 8px;
    	background: red;
 		color: white;
 		font-size: 14px;
 		border-radius: 4px;
 		cursor: pointer;
 		border:none;
 		font-weight: 600;
    	
    }
    #update{
    	padding: 4px 8px;
    	background: green;
    	font-weight: 600;
 		color: white;
 		font-size: 14px;
 		border-radius: 4px;
 		cursor: pointer;
 		border:none;
    	
    }

    h1 {
        text-align: center;
        color: #333333;
        font-size: 24px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div>
        <h1>User Details</h1>
        <table border="2">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>AGE</th>
                <th>SALARY</th>
                <th>Phone</th>
                <th>ADDRESS</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
            <% 
                User user = (User) request.getAttribute("key");
            if(user != null){
               
            %>
            <tr>
                <td><%=user.getUserId()%></td>
                <td><%=user.getUserName()%></td>
                <td><%=user.getUserAge()%></td>
                <td><%=user.getUserSalary()%></td>
                <td><%=user.getUserPhone()%></td>
                <td><%=user.getUserAddress()%></td>
                <td><%=user.getUserEmail()%></td>
                <td><%=user.getUserPassword()%></td>
                
                <td>
                <a href="delete?id=<%=user.getUserId()%>">
                <button id="delete">DELETE</button></a>
                </td>
                <td>
                <a href="update?id=<%=user.getUserId()%>">
                <button id="update">UPDATE</button></a>
                </td>
            </tr>
            <%} %>
            
        </table>
    </div>
</body>
</html>
