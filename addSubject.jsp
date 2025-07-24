<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Add New Subject</title>
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
            background-color:#0066cc;
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
            background-color: #0066cc;
        }
    </style>
</head>
<body>

<div class="edit-info-container">
    <h2>Add New Subject</h2>
    <form class="edit-info-form" action="AddSubjectServlet" method="post">
        <div class="form-group">
            <label for="subjectName">Subject Name:</label>
            <input type="text" id="subjectName" name="subjectName" required placeholder="Enter subject name" />
        </div>

        <div class="form-group">
            <label for="lessonName">Lesson Name:</label>
            <input type="text" id="lessonName" name="lessonName" required placeholder="Enter lesson name" />
        </div>


        <div class="form-group">
            <label for="grade">Grade:</label>
            <select id="grade" name="grade" required>
                <option value="" disabled selected>Select Grade</option>
                <option value="Grade 10">Grade 10</option>
                <option value="Grade 11">Grade 11</option>
                <option value="Grade 12">Grade 12</option>
            </select>
        </div>

        <div class="form-group">
            <label for="stream">Stream:</label>
            <select id="stream" name="stream" required>
                <option value="" disabled selected>Select Stream</option>
                <option value="Science">Science</option>
                <option value="Commerce">Commerce</option>
                <option value="Arts">Arts</option>
            </select>
        </div>

        <div class="form-group">
            <label for="price">Subject Price:</label>
            <input type="number" id="price" name="price" required min="0" step="0.01" placeholder="Enter subject price" />
        </div>


        <button type="submit">Add Subject</button>
    </form>
</div>

</body>
</html>
