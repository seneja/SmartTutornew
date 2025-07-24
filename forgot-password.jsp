<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(to right, #e2e2e2, #baa5e7);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        h1 {
            color: #6646e4;
            margin-bottom: 20px;
            font-size: 24px;
        }
        input[type="text"], input[type="submit"], select {
            width: 100%;
            padding: 12px 15px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #333;
            color: white;
            border: none;
            margin-top: 15px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #2c2c2e;
        }
        .error {
            color: rgb(8, 0, 0);
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Forgot Password</h1>
    <form action="forgotPassword" method="post">
        <input type="text" name="username" placeholder="Enter your username/email" required>
        <select name="role" required>
            <option value="" disabled selected>Select Role</option>
            <option value="student">Student</option>
            <option value="tutor">Tutor</option>
            <option value="admin">Admin</option>
        </select>
        <input type="submit" value="Reset Password">
        <p class="error">${errorMessage}</p>
    </form>
</div>
</body>
</html>

