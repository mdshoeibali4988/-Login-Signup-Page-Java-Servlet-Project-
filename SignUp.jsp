<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
        font-size: 24px;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 15px;
    }

    label {
        font-weight: bold;
        font-size: 14px;
        color: #555;
        margin-bottom: 5px;
    }

    input {
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #f9f9f9;
        font-size: 14px;
        box-sizing: border-box;
    }

    input:focus {
        border-color: #007bff;
        background-color: #eef7ff;
        outline: none;
    }

    button {
        padding: 12px;
        background-color: #007bff;
        color: #fff;
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

    input::placeholder {
        color: #aaa;
    }
</style>
</head>
<body>



<div class="container">
    <h2>Signup Form</h2>
    <form action="signup" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" placeholder="Enter your name" name="name" required>
        
        <label for="age">Age:</label>
        <input type="number" id="age" placeholder="Enter your age" name="age" required>
        
        <label for="age">Salary:</label>
        <input type="number" id="salary" placeholder="Enter your salary" name="salary" required>

        <label for="address">Address:</label>
        <input type="text" id="address" placeholder="Enter your address" name="address" required>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" placeholder="Enter your phone" name="phone" required>

        <label for="email">Email:</label>
        <input type="text" id="email" placeholder="Enter your email" name="email" required>

        <label for="password">Password:</label>
        <input type="text" id="password" placeholder="Enter your password" name="password" required>

        <button type="submit">Sign Up</button>
    </form>
</div>

</body>
</html>