<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link

            rel="stylesheet"
    />
    <link rel="stylesheet" href="style.css" />
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
        <li><a href="login.jsp">Home</a></li>
        <li><a href="login.jsp">Benefits</a></li>
        <li><a href="login.jsp">Tutors</a></li>
        <li><a href="login.jsp">FAQ</a></li>
        <li><a href="login.jsp">Contact</a></li>
    </ul>
    <div class="nav__btns">
        <a href ="register.jsp">
            <button class="btn sign__up">Sign Up</button>
        </a>
        <a href ="login.jsp">
            <button class="btn sign__in">Sign In</button>
        </a>

    </div>
</nav>
<header class="header__container">
    <!-- TEXT FIRST -->
    <div class="header__content">
        <h1>Find the Perfect Tutor for You<br />Anytime, Anywhere!</h1>
        <p>Search, compare, and book the best tutors in your area or online in just a few clicks</p>
        <a href="register.jsp">
            <button class=" sign__in rounded-btn get-started-btn">Get Started</button>
        </a>


    </div>


    <!-- IMAGE SECOND -->
    <div class="header__image">
        <img src="images/header.jpg" alt="header" />
    </div>
</header>

<script src="https://unpkg.com/scrollreveal"></script>
<script src="main.js"></script>
</body>
</html>