<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link

          rel="stylesheet"
  />
  <link rel="stylesheet" href="style.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <title>Edit info</title>
  <style>
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
  </style>
</head>
<body>
<nav>
  <div class="nav__header">
    <div class="nav__logo">
      <a href="#">Smart<span>Tutor</span></a>
    </div>
    <div class="nav__menu__btn" id="menu-btn">
      <span><i class="ri-menu-line"></i></span>
    </div>
  </div>
  <ul class="nav__links" id="nav-links">
    <li><a href="home.jsp">Home</a></li>
    <li><a href="courses.jsp">Course</a></li>
    <li><a href="tutors.jsp">Tutors</a></li>
    <li><a href="contactus.jsp">Contact</a></li>
    <li><a href="profile.jsp">Dashboard</a></li>
  </ul>
  <div class="nav__btns">
    <button class="btn sign__in" onclick="location.href='logout'">Log out</button>
  </div>
</nav>

<div class="edit-info-container">
  <h2>Edit Profile Information</h2>
  <form action="updateInfo" method="post" class="edit-info-form">
    <div class="form-group">
      <label for="username">Username:</label>

      <input type="text" id="username" name="username" value="<%= session.getAttribute("userName") %>" readonly />


    </div>

    <div class="form-group">
      <label for="email">Email Address:</label>
      <input type="email" id="email" name="email" required />
    </div>

    <div class="form-group">
      <label for="password">New Password:</label>
      <input type="password" id="password" name="password" required />
    </div>

    <div style="text-align: center; margin-top: 20px;">
      <button type="submit" class="btn sign__in">Update Info</button>
    </div>
  </form>
</div>






<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="footer-col">
        <h4>company</h4>
        <ul>
          <li><a href="#">about us</a></li>
          <li><a href="#">our services</a></li>
          <li><a href="#">privacy policy</a></li>

        </ul>
      </div>
      <div class="footer-col">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="home.jsp">Home</a></li>
          <li><a href="courses.jsp">Course</a></li>
          <li><a href="tutors.jsp">Tutors</a></li>
          <li><a href="contactus.jsp">Contacts</a></li>
          <li><a href="profile.jsp">Dashboard</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Follow Us</h4>
        <ul>
          <li><a href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>
          <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
          <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
          <li><a href="#"><i class="fab fa-linkedin-in"></i> LinkedIn</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Contact Us</h4>
        <ul>
          <li><a href="#"><i class="fas fa-phone"></i> +703049604</a></li>
          <li><a href="#"><i class="fas fa-envelope"></i> smarttutor@gmail.com</a></li>
          <li><a href="#"><i class="fas fa-map-marker-alt"></i> Matara, Sri Lanka - 400104</a></li>
        </ul>
      </div>


    </div>
  </div>
</footer>

</body>
</html>
