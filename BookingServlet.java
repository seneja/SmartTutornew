package com.SmartTutor.servlet;

import com.SmartTutor.dao.BookingDAO;
import com.SmartTutor.model.Booking;

import javax.servlet.ServletException;

import javax.servlet.http.*;
import java.io.IOException;


public class BookingServlet extends HttpServlet {

    private final BookingDAO bookingDAO = new BookingDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentName = request.getParameter("studentName");
        String subjectName = request.getParameter("subjectName");
        String lessonName = request.getParameter("lessonName");
        String bookingDate = request.getParameter("bookingDate");
        String bookingTime = request.getParameter("bookingTime");

        Booking booking = new Booking(studentName, subjectName, lessonName, bookingDate, bookingTime);

        boolean success = bookingDAO.addBooking(booking);

        if (success) {
            response.sendRedirect("payment.jsp");
        } else {
            response.sendRedirect("booking.jsp?error=true");
        }
    }
}
