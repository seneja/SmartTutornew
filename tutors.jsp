<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Our Expert Tutors</title>

    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        .tutors-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-bottom: 50px;
        }

        .tutor-card {
            width: 220px;
            padding: 15px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s ease;
        }

        .tutor-card:hover {
            transform: translateY(-5px);
        }

        .tutor-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            margin: 0 auto 12px auto;
            display: block;
        }

        .tutor-name {
            font-size: 20px;
            font-weight: 600;
            color: #333;
        }

        .tutor-email {
            font-size: 14px;
            color: #777;
            margin-top: 5px;
        }

        .tutor-subject {
            margin-top: 10px;
            font-size: 15px;
            color: #555;
        }

        .tutor-role {
            margin-top: 10px;
            font-size: 13px;
            padding: 5px 10px;
            border-radius: 20px;
            background-color: #eee;
            display: inline-block;
        }

        .no-tutors {
            text-align: center;
            font-size: 18px;
            color: #777;
        }


    </style>
</head>
<body>

<!-- Navigation -->
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
        <li><a href="${pageContext.request.contextPath}/Tutorslist">Tutors</a></li>


        <li><a href="contactus.jsp">Contact</a></li>
        <li><a href="profile.jsp">Dashboard</a></li>
    </ul>
    <div class="nav__btns">
        <button class="btn sign__in" onclick="location.href='logout'">Log out</button>
    </div>
</nav>

<!-- Heading -->
<h1 class="heading" style="text-align: center; margin-top: 50px;">Our Expert Tutors</h1>

<!-- Search Input -->
<div style="text-align:center; margin-bottom: 30px;">
    <input type="text" id="searchInput" placeholder="Search by Subject Name"
           style="padding: 10px; width: 250px; border-radius: 6px; border: 1px solid #ccc; font-size: 15px;"
           onkeyup="filterTutors()" />
</div>

<!-- Tutors Section -->
<section class="course" id="courseSection">
    <div class="tutors-grid" id="tutors-container">
        <c:if test="${empty tutorsList}">
            <div class="no-tutors">No tutors found. Please check back later.</div>
        </c:if>

        <c:if test="${not empty tutorsList}">
            <c:forEach var="tutor" items="${tutorsList}">
                <div class="tutor-card">
                    <img src="${pageContext.request.contextPath}/images/default-avatar.png"
                         alt="${tutor.username}" class="tutor-avatar">

                    <div class="tutor-info">
                        <div class="tutor-name">${tutor.username}</div>
                        <div class="tutor-email">${tutor.email}</div>
                        <div class="tutor-subject"><i class="fas fa-book"></i> ${tutor.subject}</div>
                        <c:if test="${not empty tutor.role}">
                            <div class="tutor-role role-${tutor.role.toLowerCase()}">
                                    ${tutor.role}
                            </div>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Our services</a></li>
                    <li><a href="#">Privacy policy</a></li>
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

<script>
    function filterTutors() {
        let input = document.getElementById("searchInput").value.toLowerCase();
        const cards = document.querySelectorAll(".tutor-card");

        cards.forEach(card => {
            const subject = card.querySelector(".tutor-subject").textContent.toLowerCase();
            card.style.display = subject.includes(input) ? "block" : "none";
        });
    }
</script>

</body>
</html>


