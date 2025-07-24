package com.SmartTutor.servlet;

import com.SmartTutor.util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class EditInfoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the current user ID from session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            // User is not logged in, redirect to login
            response.sendRedirect("login.jsp?error=notloggedin");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        // Get updated form data
        String newEmail = request.getParameter("email");
        String newPassword = request.getParameter("password");

        if (newEmail == null || newEmail.isEmpty() || newPassword == null || newPassword.isEmpty()) {
            response.sendRedirect("editinfo.jsp?error=emptyfields");
            return;
        }

        // Update user info in DB
        try (Connection conn = DBUtil.getConnection()) {
            String sql = "UPDATE users SET email = ?, password = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, newEmail);
            stmt.setString(2, newPassword);
            stmt.setInt(3, userId);

            int updated = stmt.executeUpdate();

            if (updated > 0) {
                // Update email in session as well
                session.setAttribute("email", newEmail);

                // Redirect to profile page or success page
                response.sendRedirect("profile.jsp?update=success");
            } else {
                response.sendRedirect("editinfo.jsp?error=updatefailed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("editinfo.jsp?error=server");
        }
    }
}
