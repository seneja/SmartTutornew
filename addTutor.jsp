<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Tutor - SmartTutor</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(to right, #e2e2e2, #baa5e7);
            margin: 0;
            padding: 0;
        }

        .edit-info-container {
            max-width: 600px;
            margin: 60px auto;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .edit-info-container h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            color: #1c1f2b;
        }

        .edit-info-form .form-group {
            margin-bottom: 20px;
        }

        .edit-info-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #333;
        }

        .edit-info-form input[type="text"],
        .edit-info-form input[type="email"],
        .edit-info-form input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fdfdfd;
            transition: border-color 0.3s ease;
        }

        .edit-info-form input:focus {
            border-color: #00bfff;
            outline: none;
        }

        .edit-info-form button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background-color: #6646e4;
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .edit-info-form button:hover {
            background-color: #4d2fcf;
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            color: #6646e4;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="edit-info-container">
    <h2>Add New Tutor</h2>
    <form class="edit-info-form" action="<%= request.getContextPath() %>/registerTutor" method="post">

    <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required />
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />
        </div>

        <div class="form-group">
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required />
        </div>

        <button type="submit">Add Tutor</button>
    </form>

    <div class="back-link">
        <a href="${pageContext.request.contextPath}/adminDashboard">← Back to Dashboard</a>
    </div>
</div>

</body>
</html>

