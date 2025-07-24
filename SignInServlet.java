//package com.SmartTutor.servlet;
//
//import com.SmartTutor.util.DBUtil;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//
//public class SignInServlet extends HttpServlet {
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        try (Connection conn = DBUtil.getConnection()) {
//            HttpSession session = request.getSession();
//            boolean authenticated = false;
//
//            // First check users table
//            String userSql = "SELECT * FROM users WHERE email = ? AND password = ?";
//            try (PreparedStatement stmt = conn.prepareStatement(userSql)) {
//                stmt.setString(1, email);
//                stmt.setString(2, password);
//                ResultSet rs = stmt.executeQuery();
//
//                if (rs.next()) {
//                    session.setAttribute("userId", rs.getInt("id"));
//                    session.setAttribute("userName", rs.getString("username"));
//                    session.setAttribute("email", rs.getString("email"));
//                    session.setAttribute("role", rs.getString("role"));
//
//                    String role = rs.getString("role");
//                    authenticated = true;
//
//                    switch (role) {
//                        case "student":
//                            response.sendRedirect("home.jsp");
//                            return;
//                        case "tutor":
//                            response.sendRedirect("tutorprofile.jsp");
//                            return;
//                        default:
//                            response.sendRedirect("login.jsp?error=invalidrole");
//                            return;
//                    }
//                }
//            }
//
//            // If not found in users, check tutors table
//            if (!authenticated) {
//                String tutorSql = "SELECT * FROM tutors WHERE email = ? AND password = ?";
//                try (PreparedStatement stmt = conn.prepareStatement(tutorSql)) {
//                    stmt.setString(1, email);
//                    stmt.setString(2, password);
//                    ResultSet rs = stmt.executeQuery();
//
//                    if (rs.next()) {
//                        session.setAttribute("userId", rs.getInt("id"));
//                        session.setAttribute("userName", rs.getString("username"));
//                        session.setAttribute("email", rs.getString("email"));
//                        session.setAttribute("role", "tutor");
//                        session.setAttribute("subject", rs.getString("subject"));
//
//                        response.sendRedirect("tutorprofile.jsp");
//                        return;
//                    }
//                }
//            }
//
//            // If still not found, check admin table
//            if (!authenticated) {
//                String adminSql = "SELECT * FROM admin WHERE email = ? AND password = ?";
//                try (PreparedStatement stmt = conn.prepareStatement(adminSql)) {
//                    stmt.setString(1, email);
//                    stmt.setString(2, password);
//                    ResultSet rs = stmt.executeQuery();
//
//                    if (rs.next()) {
//                        session.setAttribute("userId", rs.getInt("id"));
//                        session.setAttribute("userName", rs.getString("username"));
//                        session.setAttribute("email", rs.getString("email"));
//                        session.setAttribute("role", "admin");
//
//                        response.sendRedirect("adminDashboard.jsp");
//                        return;
//                    }
//                }
//            }
//
//            // If no match found
//            response.sendRedirect("login.jsp?error=invalid");
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendRedirect("login.jsp?error=server");
//        }
//    }
//}


package com.SmartTutor.servlet;

import com.SmartTutor.util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SignInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = DBUtil.getConnection()) {
            HttpSession session = request.getSession();
            boolean authenticated = false;

            // Check users table (students/tutors)
            String userSql = "SELECT * FROM users WHERE email = ? AND password = ?";
            try (PreparedStatement stmt = conn.prepareStatement(userSql)) {
                stmt.setString(1, email);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    session.setAttribute("userId", rs.getInt("id"));
                    session.setAttribute("userName", rs.getString("username"));
                    session.setAttribute("loggedInUsername", rs.getString("username")); // ✅ STEP 1
                    session.setAttribute("email", rs.getString("email"));
                    session.setAttribute("role", rs.getString("role"));

                    String role = rs.getString("role");
                    authenticated = true;

                    switch (role) {
                        case "student":
                            response.sendRedirect("home.jsp");
                            return;
                        case "tutor":
                            response.sendRedirect("tutorprofile.jsp");
                            return;
                        default:
                            response.sendRedirect("login.jsp?error=invalidrole");
                            return;
                    }
                }
            }

            // Check tutors table separately
            if (!authenticated) {
                String tutorSql = "SELECT * FROM tutors WHERE email = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(tutorSql)) {
                    stmt.setString(1, email);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();

                    if (rs.next()) {
                        session.setAttribute("userId", rs.getInt("id"));
                        session.setAttribute("userName", rs.getString("username"));
                        session.setAttribute("loggedInUsername", rs.getString("username")); // ✅ STEP 1
                        session.setAttribute("email", rs.getString("email"));
                        session.setAttribute("role", "tutor");
                        session.setAttribute("subject", rs.getString("subject"));

                        response.sendRedirect("tutorprofile.jsp");
                        return;
                    }
                }
            }

            // Check admin table
            if (!authenticated) {
                String adminSql = "SELECT * FROM admin WHERE email = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(adminSql)) {
                    stmt.setString(1, email);
                    stmt.setString(2, password);
                    ResultSet rs = stmt.executeQuery();

                    if (rs.next()) {
                        session.setAttribute("userId", rs.getInt("id"));
                        session.setAttribute("userName", rs.getString("username"));
                        session.setAttribute("loggedInUsername", rs.getString("username")); // ✅ STEP 1
                        session.setAttribute("email", rs.getString("email"));
                        session.setAttribute("role", "admin");

                        response.sendRedirect("adminDashboard.jsp");
                        return;
                    }
                }
            }

            // No match found
            response.sendRedirect("login.jsp?error=invalid");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=server");
        }
    }
}
