package com.SmartTutor.servlet;

import com.SmartTutor.dao.SubjectDAO;
import com.SmartTutor.model.Subject;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;


public class TutorProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        // Check if session exists and tutor is logged in
        if (session == null || session.getAttribute("userName") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String tutorUsername = (String) session.getAttribute("userName");

        // Get subjects for this tutor
        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subject> mySubjects = subjectDAO.getSubjectsByTutor(tutorUsername);

        // Set attributes and forward to JSP
        request.setAttribute("mySubjects", mySubjects);
        request.getRequestDispatcher("tutorprofile.jsp").forward(request, response);
        System.out.println("TutorProfileServlet accessed");
        System.out.println("Session userName: " + tutorUsername);
        System.out.println("Subjects found: " + mySubjects.size());
        for (Subject s : mySubjects) {
            System.out.println("Subject: " + s.getSubjectName());
        }


    }
}
