<%
    String studentName = (String) session.getAttribute("loggedInUsername");
    if (studentName == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

//    String studentName = (String) session.getAttribute("loggedInUsername");
    String subjectName = request.getParameter("subjectName");
    String lessonName = request.getParameter("lessonName");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Book Lesson</title>
    <style>
        .booking-form {
            width: 400px;
            margin: 80px auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            background: linear-gradient(to right, #f8f9fa, #97bdf6);
        }
        .booking-form input, .booking-form button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
        }
        .booking-form button {
            background-color: #5b80f3;
            color: white;
            border: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
<form class="booking-form" action="BookingServlet" method="post">
    <h2>Book Your Lesson</h2>

    <label>Student Name</label>
    <input type="text" name="studentName" value="<%= studentName %>" readonly>

    <label>Subject Name</label>
    <input type="text" name="subjectName" value="<%= subjectName %>" readonly>

    <label>Lesson Name</label>
    <input type="text" name="lessonName" value="<%= lessonName %>" readonly>

    <label>Booking Date</label>
    <input type="date" name="bookingDate" required>

    <label>Booking Time</label>
    <input type="time" name="bookingTime" required>

    <button type="submit">Confirm Booking</button>
</form>
</body>
</html>
