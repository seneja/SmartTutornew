<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Profile - SmartTutor</title>
    <link rel="stylesheet" href="style.css" />

    <!-- Add custom styles for buttons -->
    <style>
        .action-box {
            display: flex;
            flex-direction: column;
            gap: 2px;
            align-items: flex-start;
        }

        .profile-btn {
            width: 180px;
        }

        .button-row {
            display: flex;
            justify-content: flex-start;
            gap: 10px;
            margin-top: 10px;
        }


        .profile-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 16px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
            text-align: center;
        }

        .edit-btn {
            background-color: #6646e4;
            color: white;
        }

        .delete-btn {
            background-color: #ff4444;
            color: white;
        }

        .edit-btn:hover {
            background-color: #0055aa;
        }

        .delete-btn:hover {
            background-color: #cc0000;
        }

        .subject-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            padding: 20px;
            align-items: center;
        }

        /*.subject-box {*/
        /*    width: 100%;*/
        /*    max-width: 10000px;*/
        /*    border: 1px solid #ddd;*/
        /*    border-radius: 10px;*/
        /*    padding: 20px;*/
        /*    background-color: #fff;*/
        /*    box-shadow: 0 4px 10px rgba(0,0,0,0.1);*/
        /*}*/

        .my-subjects-title {
            margin-left: -950px; /* adjust the value as needed */
        }

        .subject-box {
            width: 100%;
            max-width: 10000px; /* as you specified */
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);

            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .subject-box:hover {
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            transform: scale(1.03);
            cursor: pointer;
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
        <li><a href="#">Home</a></li>
        <li><a href="#">Course</a></li>
        <li><a href="#">Tutors</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="${pageContext.request.contextPath}/TutorProfile">Dashboard</a></li> <!-- ✅ Correct -->

    </ul>
    <div class="nav__btns">
        <button class="btn sign__in" onclick="location.href='logout'">Log out</button>
    </div>
</nav>

<!-- Profile Section -->
<section class="user-profile-section">
    <div class="user-profile-card">
        <div class="user-header">
            <i class="fas fa-user-circle user-icon"></i>
            <h2 class="user-name">${sessionScope.userName}</h2>
        </div>
        <hr />

        <div class="action-box">
            <div class="user-details">
                <p><strong>Email:</strong> ${sessionScope.email}</p>
                <p><strong>Phone:</strong> +94 77 123 4567</p>
            </div>
            <button class="profile-btn edit-btn" onclick="window.location.href='editinfo.jsp'">Edit Profile</button>
            <button class="profile-btn edit-btn" onclick="window.location.href='addSubject.jsp'">Add New Subject</button>
        </div>

        <h2 class="my-subjects-title" style="text-align:center; margin-top:40px;">My Subjects</h2>

        <hr />
        <div style="display: flex; flex-wrap: wrap; justify-content:left ; gap: 20px; padding: 20px;">
            <c:choose>
                <c:when test="${empty mySubjects}">
                    <p>No subjects added yet.</p>
                </c:when>
                <c:otherwise>
                    <c:forEach var="subject" items="${mySubjects}">
                        <div class="subject-box">
                            <h3 style="color: #333;">${subject.subjectName}</h3>
                            <p><strong>Lesson:</strong> ${subject.lessonName}</p>
                            <p><strong>Grade:</strong> ${subject.grade}</p>
                            <p><strong>Stream:</strong> ${subject.stream}</p>
                            <p><strong>Price:</strong> Rs. ${subject.price}</p>

                            <div class="button-row">
                                <a href="editSubject?id=${subject.id}" class="profile-btn edit-btn">Edit</a>
                                <a href="deleteSubject?id=${subject.id}" class="profile-btn delete-btn"
                                   onclick="return confirm('Are you sure you want to delete this subject?');">Delete</a>
                            </div>
                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col">
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Privacy Policy</a></li>
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
