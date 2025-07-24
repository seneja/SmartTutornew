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

    <title>Contact Us</title>
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


    <form action="">
    <h1 class="heading">contact us</h1>
    <div class="inputBox">
        <input type="text" placeholder="name">
        <input type="email" placeholder="email">
    </div>

    <input type="text" placeholder="subject" class="box">

    <textarea placeholder="message" name="" id="" cols="30" rows="10"></textarea>

    <input type="submit" class="btn" value="send">

    </form>




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