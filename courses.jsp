<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Our Expert Tutors</title>

    <link rel="stylesheet" href="style.css" />
    <style>
        .horizontal-courses-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center the row */
            gap: 20px; /* spacing between cards */
            padding: 20px 20px 20px 120px; /* retain your left padding */
            margin: 30px auto;
            max-width: 1300px; /* Optional: control total width */
        }

        .course-card {
            width: 240px; /* Keep as is */
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 15px;
            font-family: 'Arial', sans-serif;
            transition: transform 0.3s ease;
        }

        .course-card:hover {
            transform: translateY(-5px);
        }

        /* The rest of your CSS remains unchanged */
        .course-image {
            width: 100%;
            height: 140px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .course-name {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }

        .lesson-name {
            font-size: 14px;
            color: #555;
            margin-bottom: 12px;
        }

        .learn-more-button {
            display: inline-block;
            padding: 8px 14px;
            background-color: #6646e4;
            color: #fff;
            font-size: 14px;
            text-decoration: none;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .learn-more-button:hover {
            background-color: #0066cc;
        }

        .horizontal-courses-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start; /* Align cards from the left */
            gap: 20px;
            padding: 20px 20px 20px 120px; /* Keep your left padding */
            margin: 30px auto;
            width: calc((240px * 5) + (20px * 4)); /* 5 cards + 4 gaps */
            box-sizing: border-box;
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
        <li><a href="courses">Course</a></li>
        <li><a href="${pageContext.request.contextPath}/Tutorslist">Tutors</a></li>


        <li><a href="contactus.jsp">Contact</a></li>
        <li><a href="profile.jsp">Dashboard</a></li>
    </ul>
    <div class="nav__btns">
        <button class="btn sign__in" onclick="location.href='logout'">Log out</button>
    </div>
</nav>

<!-- Heading -->
<h1 class="heading" style="text-align: center; margin-top: 50px;">Popular Courses</h1>

<!-- Search Input -->
<div style="text-align:center; margin-bottom: 30px;">
    <input type="text" id="searchInput" placeholder="Search by Subject Name" style="padding: 10px; width: 250px; border-radius: 6px; border: 1px solid #ccc; font-size: 15px;" />

    <select id="gradeFilter" style="padding: 10px; border-radius: 6px; margin-left: 10px; font-size: 15px;">
        <option value="">All Grades</option>
        <option value="Grade9">Grade 9</option>
        <option value="Grade10">Grade 10</option>
        <option value="Grade11">Grade 11</option>
        <option value="Grade12">Grade 12</option>
    </select>

    <select id="streamFilter" style="padding: 10px; border-radius: 6px; margin-left: 10px; font-size: 15px;">
        <option value="">All Streams</option>
        <option value="Science">Science</option>
        <option value="Commerce">Commerce</option>
        <option value="Arts">Arts</option>
    </select>
</div>
<div class="horizontal-courses-wrapper">
    <c:forEach var="subject" items="${subjects}">
        <div class="course-card">
            <img class="course-image" src="images/course-1.svg" alt="Course Image" />
            <div class="course-name">${subject.subjectName}</div>
            <div class="lesson-name">Lesson: ${subject.lessonName}</div>
            <a href="bookCourse.jsp?subjectName=${subject.subjectName}&lessonName=${subject.lessonName}" class="learn-more-button">Learn More</a>
        </div>
    </c:forEach>
</div>








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
    document.addEventListener("DOMContentLoaded", function () {
        const searchInput = document.getElementById("searchInput");
        const gradeFilter = document.getElementById("gradeFilter");
        const streamFilter = document.getElementById("streamFilter");

        function filterCourses() {
            const searchValue = searchInput.value.toLowerCase();
            const gradeValue = gradeFilter.value.toLowerCase();
            const streamValue = streamFilter.value.toLowerCase();

            const cards = document.querySelectorAll(".course-card");

            cards.forEach(card => {
                const subject = card.querySelector(".course-name").textContent.toLowerCase();
                const lesson = card.querySelector(".lesson-name").textContent.toLowerCase();
                const grade = lesson.includes("grade") ? lesson.split("grade")[1].trim().toLowerCase() : "";
                const stream = lesson.includes("stream") ? lesson.split("stream")[1].trim().toLowerCase() : "";

                const matchesSubject = subject.includes(searchValue);
                const matchesGrade = !gradeValue || card.innerHTML.toLowerCase().includes(gradeValue);
                const matchesStream = !streamValue || card.innerHTML.toLowerCase().includes(streamValue);

                if (matchesSubject && matchesGrade && matchesStream) {
                    card.style.display = "inline-block";
                } else {
                    card.style.display = "none";
                }
            });
        }

        searchInput.addEventListener("input", filterCourses);
        gradeFilter.addEventListener("change", filterCourses);
        streamFilter.addEventListener("change", filterCourses);
    });
</script>


</body>
</html>


