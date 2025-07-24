
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
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
        .register-container {
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
        .social-icons {
            margin: 20px 0;
        }
        .social-icons a {
            display: inline-flex;
            justify-content: center;
            align-items: center;
            margin: 0 5px;
            width: 40px;
            height: 40px;
            border: 1px solid #ddd;
            border-radius: 50%;
            color: #333;
            text-decoration: none;
        }
        .divider {
            margin: 20px 0;
            color: #999;
            position: relative;
        }
        .divider::before {
            content: "";
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 1px;
            background-color: #eee;
            z-index: -1;
        }
        .divider span {
            background-color: #fff;
            padding: 0 10px;
        }
        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 12px 15px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #040110;
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
        .switch-form {
            margin-top: 20px;
            font-size: 14px;
        }
        .switch-form a {
            color: #6646e4;
            text-decoration: none;
            font-weight: 600;
        }
        .password-note {
            display: block;
            color: #666;
            font-size: 13px;
            margin-top: -5px;
            margin-bottom: 10px;
            text-align: left;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
</head>
<body>
<div class="register-container">
    <h1>Create Account</h1>

    <div class="social-icons">
        <a href="#"><i class="fab fa-google"></i></a>
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-github"></i></a>
        <a href="#"><i class="fab fa-linkedin-in"></i></a>
    </div>

    <div class="divider"><span>or use your email for registration</span></div>

    <form action="register" method="post" id="registerForm">
        <input type="text" name="username" placeholder="Username" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <small class="password-note">
            Password must be at least 8 characters long and include uppercase, lowercase, a number, and a special character.
        </small>

        <select name="role" required>
            <option value="" disabled selected>Select Role</option>
            <option value="student">Student</option>
            <option value="admin">Admin</option>
        </select>

        <input type="submit" value="Sign Up">
        <p class="error">${errorMessage}</p>
    </form>

    <div class="switch-form">
        Already have an account? <a href="login.jsp">Sign in</a>
    </div>
</div>

<script>
    document.getElementById("registerForm").addEventListener("submit", function (e) {
        const password = document.querySelector('input[name="password"]').value;
        const errorPara = document.querySelector('.error');

        const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/;

        if (!passwordPattern.test(password)) {
            e.preventDefault(); // Stop form submission
            errorPara.textContent = "Password does not meet the required criteria.";
        }
    });
</script>

</body>
</html>
