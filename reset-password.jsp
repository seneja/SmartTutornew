<html>
<head>
    <title>Reset password</title>
    <style>
         body{
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(to right, #e2e2e2, #baa5e7);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
         }
        .reset-container{
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
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #090001;
            color: white;
            border: none;
            padding: 12px 30px;
            margin-top: 15px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            width: 100%;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #2c2c2e;
        }
        .error {
            color: #0d0101;
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
</head>  
<body>
<div class="reset-container">
    <h1>Reset your password</h1>
    <form action="resetpassword" method="post">
        <input type="password" name="newPassword" placeholder="Enter new password" required>
        <input type="submit" value="Upadate password">
        <p class="error">${errorMessage}</p>

    </form>
</div>
</body> 
</html>