package com.SmartTutor.servlet;

import com.SmartTutor.util.DBUtil;

import javax.servlet.ServletException;

import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class AddSubjectServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Step 1: Get form data
        String subjectName = request.getParameter("subjectName");
        String lessonName = request.getParameter("lessonName");
        String grade = request.getParameter("grade");
        String stream = request.getParameter("stream");
        String priceStr = request.getParameter("price");

        // Step 2: Get tutor username from session
        HttpSession session = request.getSession(false);
        String tutorUsername = (session != null) ? (String) session.getAttribute("userName") : null;

        if (tutorUsername == null || tutorUsername.isEmpty()) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Step 3: Validate input
        if (subjectName == null || lessonName == null || grade == null || stream == null || priceStr == null ||
                subjectName.isEmpty() || lessonName.isEmpty() || grade.isEmpty() || stream.isEmpty() || priceStr.isEmpty()) {
            response.sendRedirect("addSubject.jsp?error=missingFields");
            return;
        }

        double price;
        try {
            price = Double.parseDouble(priceStr);
            if (price < 0) {
                response.sendRedirect("addSubject.jsp?error=invalidPrice");
                return;
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("addSubject.jsp?error=invalidPrice");
            return;
        }

        // Step 4: Insert subject into DB
        String insertSQL = "INSERT INTO subjects (subject_name, lesson_name, grade, stream, price, tutor_username) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(insertSQL)) {

            ps.setString(1, subjectName);
            ps.setString(2, lessonName);
            ps.setString(3, grade);
            ps.setString(4, stream);
            ps.setDouble(5, price);
            ps.setString(6, tutorUsername);

            int inserted = ps.executeUpdate();

            // Step 5: Redirect to TutorProfile
            if (inserted > 0) {
                response.sendRedirect("TutorProfile");  // ✅ redirect to load profile.jsp with subject cards
            } else {
                response.sendRedirect("addSubject.jsp?error=insertFail");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("addSubject.jsp?error=serverError");
        }
    }
}
