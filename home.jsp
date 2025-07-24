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

    <title>SmartTutor e learning website</title>
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
    <section class="hero__section">
        <div class="hero__content">
            <h1>Connect with Expert<br />Home Tutors Today</h1>
            <p>
             Discover qualified tutors across various subjects and levels. Personalized learning  experiences tailored to your needs.
            </p>
            <button class=" sign__in rounded-btn get-started-btn">Get Started</button>
       </div>
       <div class="hero__image">
          <img src="images/home.png" alt="Online Tutor" />
       </div>
    </section>


    <section class="section__container">
        <div class="section__header">
            <div>
                <h2 class="section__title">Explore Top Subjects</h2>
                <p class="section__subtitle">
                    Browse through a variety of subjects and find the right tutor to help you excel.
                </p>
            </div>

        </div>
        <div class="destination__grid">
            <div class="destination__card">
                <img src="images/subject-math.jpg" alt="Mathematics" />
                <div class="destination__details">
                    <p class="destination__title">Mathematics</p>
                    <p class="destination__subtitle">All Levels</p>
                </div>
            </div>
            <div class="destination__card">
                <img src="images/subject-science.jpg" alt="Science" />
                <div class = "destination__details">
                    <p class =" destination__title">Science</p>
                    <p class="destination__subtitle">Grades 6-12</p>
                </div>
            </div>
            <div class="destination__card">
                <img src="images/subject-english.jpg" alt="English" />
                <div class="destination__details">
                    <p class="destination__title">English</p>
                    <p class="destination__subtitle">Grammer and Literature</p>
                </div>
            </div>
            <div class="destination__card">
                <img src="images/subject-coding.jpg" alt="Coding" />
                <div class = "destination__details">
                    <p class =" destination__title">Coding</p>
                    <p class="destination__subtitle">Beginner to Advanced</p>
                </div>
            </div>
            <div class="destination__card">
                <img src="images/subject-science.jpg" alt="Chemistry" />
                <div class = "destination__details">
                    <p class =" destination__title">Chemistry</p>
                    <p class="destination__subtitle">Advanced level</p>
                </div>
            </div>
            

    </section>
    <div class="center-button">
                <button class="view_tutors">View Subjects</button>
     </div>
    <section class="section__container">
            <div class="section__header">
               <h2 class="section__title">Explore Top Subjects</h2>
               <h2 class="section__title">Featured Tutors</h2>
               <p class="section__subtitle">
                Meet some of our top-rated tutors ready to help you achieve your academic goals.
               </p>
            </div>

            
            <div class="destination__card">
                <img src="images/tutor-1.jpg" alt="Tutor1" />
                <div class="destination__details">
                    <p class="destination__title">Alex Johnson </p>
                    
                </div>
                
            </div>
            <div class="destination__card">
                <img src="images/tutor-2.jpg" alt="Tutor2" />
                <div class="destination__details">
                   <p class="destination__title">Samantha Lee </p>
                </div>
            </div>
                
            </div>
            <div class="destination__card">
                <img src="images/tutor-3.jpg" alt="tutor3" />
                <div class="destination__details">
                   <p class="destination__title">Daniel Silva  </p>
                </div>
            
            </div>
            <div class="destination__card">
                <img src="images/tutor-1.jpg" alt="tutor4" />
                <div class="destination__details">
                     <p class="destination__title">Nisha Perera </p>
                </div>
            </div>
            <div class="destination__card">
                <img src="images/tutor-2.jpg" alt="tutor5" />
                <div class="destination__details">
                    <p class="destination__title">Rahul Mehta </p>
                </div>
            </div>  
            <div class="center-button">
                <button class="view_tutors">View Tutors</button>
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