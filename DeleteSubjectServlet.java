package com.SmartTutor.servlet;

import com.SmartTutor.dao.SubjectDAO;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class DeleteSubjectServlet extends HttpServlet {

    private SubjectDAO subjectDAO = new SubjectDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idStr = request.getParameter("id");
        if (idStr == null) {
            response.sendRedirect("TutorProfile");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);
            boolean deleted = subjectDAO.deleteSubject(id);

            // Optional: You can add a message to session for success/failure

            response.sendRedirect("TutorProfile");
        } catch (NumberFormatException e) {
            response.sendRedirect("TutorProfile");
        }
    }
}

