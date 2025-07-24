package com.SmartTutor.servlet;

import com.SmartTutor.dao.SubjectDAO;
import com.SmartTutor.model.Subject;

import javax.servlet.ServletException;

import javax.servlet.http.*;
import java.io.IOException;


public class EditSubjectServlet extends HttpServlet {

    private final SubjectDAO subjectDAO = new SubjectDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idStr = request.getParameter("id");

        if (idStr == null || idStr.isEmpty()) {
            response.sendRedirect("TutorProfile");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);
            Subject subject = subjectDAO.getSubjectById(id);

            if (subject == null) {
                response.sendRedirect("TutorProfile");
                return;
            }

            request.setAttribute("subject", subject); // ✅ Pass subject to JSP
            request.getRequestDispatcher("editSubject.jsp").forward(request, response); // ✅ Forward

        } catch (NumberFormatException e) {
            response.sendRedirect("TutorProfile");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idStr = request.getParameter("id");
        String subjectName = request.getParameter("subjectName");
        String lessonName = request.getParameter("lessonName");
        String grade = request.getParameter("grade");
        String stream = request.getParameter("stream");
        String priceStr = request.getParameter("price");
        System.out.println("doPost called");
        System.out.println("ID: " + request.getParameter("id"));
        System.out.println("Subject Name: " + request.getParameter("subjectName"));
        System.out.println("Lesson Name: " + request.getParameter("lessonName"));
        System.out.println("Grade: " + request.getParameter("grade"));
        System.out.println("Stream: " + request.getParameter("stream"));
        System.out.println("Price: " + request.getParameter("price"));


        if (idStr == null || subjectName == null || lessonName == null || grade == null ||
                stream == null || priceStr == null ||
                subjectName.trim().isEmpty() || lessonName.trim().isEmpty() ||
                grade.trim().isEmpty() || stream.trim().isEmpty() || priceStr.trim().isEmpty()) {

            try {
                int id = Integer.parseInt(idStr);
                response.sendRedirect("editSubject.jsp?id=" + id + "&error=missingFields");
            } catch (NumberFormatException ex) {
                response.sendRedirect("TutorProfile");
            }
            return;
        }

        try {
            int id = Integer.parseInt(idStr);
            double price = Double.parseDouble(priceStr);

            Subject subject = new Subject();
            subject.setId(id);
            subject.setSubjectName(subjectName);
            subject.setLessonName(lessonName);
            subject.setGrade(grade);
            subject.setStream(stream);
            subject.setPrice(price);

            System.out.println("Updating subject: " + subject.getId() + ", " + subject.getSubjectName());
            System.out.println("doPost called");
            System.out.println("id: " + idStr);
            System.out.println("subjectName: " + subjectName);
            System.out.println("lessonName: " + lessonName);
            System.out.println("grade: " + grade);
            System.out.println("stream: " + stream);
            System.out.println("price: " + priceStr);


            boolean updated = subjectDAO.updateSubject(subject);
            System.out.println("Update result: " + updated);

            if (updated) {
                response.sendRedirect("TutorProfile");
            } else {
                response.sendRedirect("editSubject.jsp?id=" + id + "&error=updateFailed");
            }

        } catch (NumberFormatException e) {
            try {
                int id = Integer.parseInt(idStr);
                response.sendRedirect("editSubject.jsp?id=" + id + "&error=invalidNumber");
            } catch (NumberFormatException ex) {
                response.sendRedirect("TutorProfile");
            }
        }
    }
}





