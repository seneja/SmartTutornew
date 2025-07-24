//package com.SmartTutor.servlet;
//import com.SmartTutor.model.User;
//import com.SmartTutor.dao.UserDAO;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class RegisterServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String email    = request.getParameter("email");
//        String role     = request.getParameter("role");
//
//        User user = new User(username, password, email, role);
//        UserDAO dao = new UserDAO();
//
//        boolean result = dao.registerUser(user);
//
//        if (result) {
//            response.sendRedirect("login.jsp?msg=registered");
//        } else {
//            response.sendRedirect("register.jsp?error=failed");
//        }
//    }
//}


package com.SmartTutor.servlet;

import com.SmartTutor.dao.AdminDAO;
import com.SmartTutor.dao.UserDAO;
import com.SmartTutor.model.Admin;
import com.SmartTutor.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email    = request.getParameter("email");
        String role     = request.getParameter("role");

        boolean result = false;

        if ("admin".equalsIgnoreCase(role)) {
            Admin admin = new Admin(username, password, email);
            AdminDAO adminDAO = new AdminDAO();
            result = adminDAO.registerAdmin(admin);
        } else {
            User user = new User(username, password, email, role);
            UserDAO userDAO = new UserDAO();
            result = userDAO.registerUser(user);
        }

        if (result) {
            response.sendRedirect("login.jsp?msg=registered");
        } else {
            response.sendRedirect("register.jsp?error=failed");
        }
    }
}
