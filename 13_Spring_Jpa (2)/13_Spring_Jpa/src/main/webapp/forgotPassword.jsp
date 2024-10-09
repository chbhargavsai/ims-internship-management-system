<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css/home.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background: url('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsimple-background&psig=AOvVaw1OHS39lJ8Gg92LJgnfLt23&ust=1728021265679000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCmxoLD8YgDFQAAAAAdAAAAABAE') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .forgot-password-box {
            background-color: white;
            width: 400px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .forgot-password-box h2 {
            margin-bottom: 20px;
            color: #2c3e50;
        }
        input[type="email"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .submitButton {
            width: 100%;
            padding: 15px;
            background-color: #1abc9c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 10px;
        }
        .submitButton:hover {
            background-color: #16a085;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="forgot-password-box">
        <h2>Forgot Password</h2>
        <form action="/forgotPassword" method="post">
            <input type="email" name="email" placeholder="Enter your email" required />
            <button type="submit" class="submitButton">Send Reset Link</button>
        </form>
        <p id="ack" class="ackMessage"></p>
    </div>
</div>

</body>
</html>
