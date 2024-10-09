<%@ include file="navbar.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Internship</title>
</head>
<body>
    <h2>Internship Details</h2>

    <!-- Form for adding a new internship -->
    <h3>Add New Internship</h3>
    <form action="/internships/add" method="POST">
        <label for="companyName">Company Name:</label>
        <input type="text" id="companyName" name="companyName" required /><br /><br />

        <label for="position">Position:</label>
        <input type="text" id="position" name="position" required /><br /><br />

        <label for="duration">Duration:</label>
        <input type="text" id="duration" name="duration" required /><br /><br />

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required /><br /><br />

        <input type="submit" value="Add Internship" />
    </form>

    <!-- Table for displaying existing internships -->
    <h3>Existing Internships</h3>
    <table border="1">
        <tr>
            <th>Internship ID</th>
            <th>Company Name</th>
            <th>Position</th>
            <th>Duration</th>
            <th>Location</th>
        </tr>
        <c:forEach var="internship" items="${internships}">
            <tr>
                <td>${internship.id}</td>
                <td>${internship.companyName}</td>
                <td>${internship.position}</td>
                <td>${internship.duration}</td>
                <td>${internship.location}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
