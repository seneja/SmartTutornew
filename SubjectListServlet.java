package com.SmartTutor.servlet;

import com.SmartTutor.dao.SubjectDAO;
import com.SmartTutor.model.Subject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;


public class SubjectListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subject> subjects = subjectDAO.getAllSubjects();

        request.setAttribute("subjects", subjects);
        request.getRequestDispatcher("/courses.jsp").forward(request, response);
    }
}
