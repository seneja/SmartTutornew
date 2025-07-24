//package com.SmartTutor.servlet;
//
//import com.SmartTutor.dao.TutorDAO;
//import com.SmartTutor.model.Tutor;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.*;
//import java.io.IOException;
//import java.util.List;
//
//
//public class ListTutorsServlet extends HttpServlet {
//
//    private TutorDAO tutorDAO;
//
//    @Override
//    public void init() throws ServletException {
//        super.init();
//        tutorDAO = new TutorDAO(); // Initialize DAO
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        // Retrieve list of tutors from DAO
//        List<Tutor> tutors = tutorDAO.getAllTutors();
//
//        // Set as request attribute for JSP
//        request.setAttribute("tutorsList", tutors);
//
//        // Forward to tutors.jsp page
//        request.getRequestDispatcher("/tutors.jsp").forward(request, response);
//    }
//
//    // Optional: handle POST if you want to allow tutor search/filter via form later
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doGet(request, response); // Default to GET logic
//    }
//}


package com.SmartTutor.servlet;

import com.SmartTutor.dao.TutorDAO;
import com.SmartTutor.model.Tutor;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ListTutorsServlet extends HttpServlet {

    private TutorDAO tutorDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        tutorDAO = new TutorDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Tutor> tutors = tutorDAO.getAllTutors();
        request.setAttribute("tutorsList", tutors);
        request.getRequestDispatcher("/tutors.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
