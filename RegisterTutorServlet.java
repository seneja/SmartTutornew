package com.SmartTutor.servlet;

import com.SmartTutor.dao.TutorDAO;
import com.SmartTutor.model.Tutor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


public class RegisterTutorServlet extends HttpServlet {

    private TutorDAO tutorDAO = new TutorDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String subject = request.getParameter("subject");

        Tutor tutor = new Tutor(username, password, email, subject);

        boolean success = tutorDAO.registerTutor(tutor);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/adminDashboard");
        } else {
            request.setAttribute("errorMessage", "Failed to register tutor.");
            request.getRequestDispatcher("/addTutor.jsp").forward(request, response);
        }
    }
}
