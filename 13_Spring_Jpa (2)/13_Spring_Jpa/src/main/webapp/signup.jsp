<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            background: url('https://static1.bigstockphoto.com/1/3/1/large1500/131857979.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .navbar {
            background-color: #2c3e50;
            padding: 15px;
            text-align: center;
            color: white;
            font-size: 24px;
        }
        .signup-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-box {
            background-color: white;
            width: 450px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .signup-box h2 {
            margin-bottom: 30px;
            color: #2c3e50;
        }
        input[type="text"], input[type="password"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .signupButton, .signinButton {
            width: 100%;
            padding: 15px;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 10px;
        }
        .signupButton {
            background-color: #1abc9c;
        }
        .signupButton:hover {
            background-color: #16a085;
        }
        .signinButton {
            background-color: #3498db;
        }
        .signinButton:hover {
            background-color: #2980b9;
        }
        .ackMessage {
            margin-top: 15px;
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="navbar">Internship Management System</div>

<div class="signup-container">
    <div class="signup-box">
        <h2>Create Your Account</h2>
        <form id="signupForm" onsubmit="event.preventDefault(); signup();">

            <input type="text" name="firstName" id="firstName" placeholder="First Name*" required />

            <input type="text" name="lastName" id="lastName" placeholder="Last Name*" required />

            <input type="tel" name="contact" id="contact" placeholder="Contact*" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" />

            <input type="email" name="email" id="email" placeholder="Email*" required />

            <input type="text" name="username" id="username" placeholder="Username*" required />

            <input type="password" name="password" id="password" placeholder="Password*" required />

            <div id="ack" class="ackMessage"></div>

            <button type="submit" class="signupButton">Sign Up</button>
            <button type="button" class="signinButton" onclick="location.href='index.jsp';">Sign In</button>

        </form>
    </div>
</div>

<script src="js/main.js"></script>

<script>
    function signup() {
        var data = JSON.stringify({
            username: document.getElementById('username').value,
            password: document.getElementById('password').value,
            firstName: document.getElementById('firstName').value,
            lastName: document.getElementById('lastName').value,
            contact: document.getElementById('contact').value,
            email: document.getElementById('email').value
        });

        var url = "http://localhost:8080/user/save";
        callApi("POST", url, data, getResponse);
    }

    function getResponse(res) {
        var ack = document.getElementById('ack');
        if (res == "uae") {
            ack.innerHTML = "Username already exists! Try another one.";
        } else if (res == "eae") {
            ack.innerHTML = "Email already exists! Use another one.";
        } else if (res == "us") {
            alert("New user saved!");
            location.replace("/");
        } else {
            ack.innerHTML = "Something went wrong with the page!";
        }
    }
</script>

</body>
</html>
