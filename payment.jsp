<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
    String studentName = (String) session.getAttribute("loggedInUsername");
    String subjectName = request.getParameter("subject");
    String lessonName = request.getParameter("lesson");
    String bookingDate = request.getParameter("date");
    String bookingTime = request.getParameter("time");
    String amount = request.getParameter("amount");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Complete Your Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e1f5fe, #ffffff);
            margin: 0;
            padding: 0;
        }

        .payment-container {
            max-width: 500px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #0277bd;
        }

        .summary {
            margin-bottom: 25px;
            line-height: 1.6;
        }

        .summary strong {
            color: #000;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-group button {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .pay-now {
            background-color: #00c853;
        }

        .pay-now:hover {
            background-color: #00b342;
        }

        .pay-later {
            background-color: #f9a825;
        }

        .pay-later:hover {
            background-color: #f57f17;
        }
    </style>
</head>
<body>

<div class="payment-container">
    <h2>Complete Your Payment</h2>

    <div class="summary">
        <p><strong>Student:</strong> <%= studentName %></p>
        <p><strong>Subject:</strong> <%= subjectName %></p>
        <p><strong>Lesson:</strong> <%= lessonName %></p>
        <p><strong>Date:</strong> <%= bookingDate %></p>
        <p><strong>Time:</strong> <%= bookingTime %></p>
        <p><strong>Amount:</strong> $<%= amount %></p>
    </div>

    <form action="PaymentServlet" method="post">
        <!-- Hidden fields to send booking info -->
        <input type="hidden" name="studentName" value="<%= studentName %>">
        <input type="hidden" name="subjectName" value="<%= subjectName %>">
        <input type="hidden" name="lessonName" value="<%= lessonName %>">
        <input type="hidden" name="bookingDate" value="<%= bookingDate %>">
        <input type="hidden" name="bookingTime" value="<%= bookingTime %>">
        <input type="hidden" name="amount" value="<%= amount %>">

        <!-- Payment Fields -->
        <input type="text" name="cardNumber" placeholder="Card Number" required>
        <input type="text" name="cardholderName" placeholder="Cardholder Name" required>

        <div class="button-group">
            <button type="submit" name="action" value="payNow" class="pay-now">Pay Now</button>
            <button type="submit" name="action" value="payLater" class="pay-later">Complete Payment Later</button>

        </div>
    </form>
</div>

</body>
</html>
