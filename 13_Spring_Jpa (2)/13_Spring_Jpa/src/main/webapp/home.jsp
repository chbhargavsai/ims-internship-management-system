<%@ include file="navbar.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Management Portal</title>
<style>
 body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsimple-background&psig=AOvVaw1OHS39lJ8Gg92LJgnfLt23&ust=1728021265679000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCmxoLD8YgDFQAAAAAdAAAAABAE') no-repeat center center fixed;
            background-size: cover;
        }
  .content {
    background-color: rgba(255, 255, 255, 0.8); /* Added transparency to the content background */
    padding: 20px;
    box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
    margin: 20px;
    border-radius: 10px; /* Added rounded corners */
  }
  .content h1 {
    color: #2c3e50;
    margin-bottom: 20px;
  }
  .content p {
    line-height: 1.6;
  }
  .quick-links {
    display: flex;
    justify-content: space-around;
    margin-top: 30px;
  }
  .quick-links a {
    background-color: #1abc9c;
    color: white;
    padding: 15px;
    text-decoration: none;
    border-radius: 5px;
    text-align: center;
    width: 180px;
  }
  .quick-links a:hover {
    background-color: #16a085;
  }
</style>
</head>
<body>

<div class="content">
  <h1>Welcome to the Internship Management Portal!</h1>
  <p>This portal is designed to help students manage their internship journey from browsing available internships, applying for opportunities, and tracking the progress of their applications.</p>
  
  <div class="quick-links">
    <a href="/internships/browse">Browse Internships</a>
    <a href="/apply">Apply Now</a>
    <a href="/status">Check Status</a>
    <a href="/profile/edit">Update Profile</a>
  </div>
</div>

</body>
</html>
