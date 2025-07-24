<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Just for testing, log where we are
    out.println("Context path: " + request.getContextPath());
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Subject - SmartTutor</title>
    <style>
        .edit-info-container {
            max-width: 600px;
            margin: 60px auto;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            font-family: Arial, sans-serif;
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
        .edit-info-form input[type="number"],
        .edit-info-form select {
            width: 100%;
            padding: 12px 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fdfdfd;
            transition: border-color 0.3s ease;
        }

        .edit-info-form input:focus,
        .edit-info-form select:focus {
            border-color: #0066cc;
            outline: none;
        }

        .edit-info-form button {
            background-color: #0066cc;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .edit-info-form button:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>

<div class="edit-info-container">
    <h2>Edit Subject</h2>

    <form action="/untitled/editSubject" method="post" class="edit-info-form">

        <input type="hidden" name="id" value="${subject.id}" />

        <div class="form-group">
            <label for="subjectName">Subject Name:</label>
            <input type="text" name="subjectName" id="subjectName" value="${subject.subjectName}" required />
        </div>

        <div class="form-group">
            <label for="lessonName">Lesson Name:</label>
            <input type="text" name="lessonName" id="lessonName" value="${subject.lessonName}" required />
        </div>

        <div class="form-group">
            <label for="grade">Grade:</label>
            <input type="text" name="grade" id="grade" value="${subject.grade}" required />
        </div>

        <div class="form-group">
            <label for="stream">Stream:</label>
            <input type="text" name="stream" id="stream" value="${subject.stream}" required />
        </div>

        <div class="form-group">
            <label for="price">Price (Rs.):</label>
            <input type="number" step="0.01" name="price" id="price" value="${subject.price}" required />
        </div>

        <button type="submit">Update Subject</button>
    </form>

</div>

</body>
</html>
