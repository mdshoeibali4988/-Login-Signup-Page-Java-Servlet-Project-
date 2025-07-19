<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    .container {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        width: 350px;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
        font-size: 24px;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    input {
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #f9f9f9;
        font-size: 14px;
    }

    input:focus {
        border-color: #007bff;
        background-color: #eef7ff;
        outline: none;
    }

    input::placeholder {
        color: #aaa;
    }

    button {
        padding: 12px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        text-transform: uppercase;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<% 
String message  = (String)request.getAttribute("key");
if(message != null){
%>
<h1><%=message  %></h1>	
<%} %>

<div class="container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="tel" placeholder="Enter your phone" name="phone" required>
        <input type="text" placeholder="Enter your password" name="password" required>
        <button type="submit">Log In</button>
    </form>
</div>

</body>
</html>