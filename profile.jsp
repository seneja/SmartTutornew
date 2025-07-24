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

    <section class="user-profile-section">
       <div class="user-profile-card">
          <div class="user-header">
          <i class="fas fa-user-circle user-icon"></i>

              <h2 class="user-name"><%= session.getAttribute("userName") %></h2>

          </div>
    <hr />

    

    <div class="action-box">
    
      <div class="user-details">
          <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>

          <p><strong>Phone:</strong> +94 77 123 4567</p>
      </div>

        <button class="profile-btn" onclick="window.location.href='editinfo.jsp'">Edit Profile</button>
        <button class="profile-btn" onclick="window.location.href='ViewPayments.jsp'">View Payments</button>

    </div>

    <div class="booked-box">
      <h3>Booked Sessions</h3>
      <p>No sessions booked yet.</p>
    </div>

    
  </div>
</section>



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