<%@ include file="navbar.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Settings</title>
    <link rel="stylesheet" href="css/home.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsimple-background&psig=AOvVaw1OHS39lJ8Gg92LJgnfLt23&ust=1728021265679000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCmxoLD8YgDFQAAAAAdAAAAABAE') no-repeat center center fixed;
            background-size: cover;
        }
        .content {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>

<div class="content">
    <h1>Profile Settings</h1>
    <form>
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <input type="submit" value="Update Profile">
    </form>
</div>

</body>
</html>
