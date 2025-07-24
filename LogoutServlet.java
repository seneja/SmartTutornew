package com.SmartTutor.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Invalidate the session
        HttpSession session = request.getSession(false); // don't create if it doesn't exist
        if (session != null) {
            session.invalidate();
        }

        // Redirect to login page or home page
        response.sendRedirect("login.jsp");
    }
}

