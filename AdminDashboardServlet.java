package com.SmartTutor.servlet;

import com.SmartTutor.dao.UserDAO;
import com.SmartTutor.dao.TutorDAO;
import com.SmartTutor.dao.AdminDAO;
import com.SmartTutor.model.User;
import com.SmartTutor.model.Tutor;
import com.SmartTutor.model.Admin;

import javax.servlet.ServletException;

import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class AdminDashboardServlet extends HttpServlet {

    private UserDAO userDAO = new UserDAO();
    private TutorDAO tutorDAO = new TutorDAO();
    private AdminDAO adminDAO = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<User> students = userDAO.getAllStudents();
        List<Tutor> tutors = tutorDAO.getAllTutors();
        List<Admin> admins = adminDAO.getAllAdmins();


        request.setAttribute("users", students);
        request.setAttribute("tutors", tutors);
        request.setAttribute("admins", admins);

        request.getRequestDispatcher("/adminDashboard.jsp").forward(request, response);
    }
}
