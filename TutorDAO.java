//package com.SmartTutor.dao;
//
//import com.SmartTutor.model.Tutor;
//import com.SmartTutor.util.DBUtil;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//public class TutorDAO {
//
//    // Insert tutor data into Tutors table
//    public boolean registerTutor(Tutor tutor) {
//        String sql = "INSERT INTO Tutors (username, password, email,role, subject) VALUES (?, ?, ?, ?,?)";
//
//        try (Connection conn = DBUtil.getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//
//            stmt.setString(1, tutor.getUsername());
//            stmt.setString(2, tutor.getPassword());
//            stmt.setString(3, tutor.getEmail());
//            stmt.setString(4, "tutor");
//            stmt.setString(5, tutor.getSubject());
//
//            return stmt.executeUpdate() > 0;
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
//
//    // Fetch all tutors from Tutors table
//    public List<Tutor> getAllTutors() {
//        List<Tutor> tutors = new ArrayList<>();
//        String sql = "SELECT * FROM Tutors";
//
//        try (Connection conn = DBUtil.getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql);
//             ResultSet rs = stmt.executeQuery()) {
//
//            while (rs.next()) {
//                Tutor tutor = new Tutor();
//                tutor.setId(rs.getInt("id"));
//                tutor.setUsername(rs.getString("username"));
//                tutor.setEmail(rs.getString("email"));
//                tutor.setPassword(rs.getString("password"));
//                tutor.setSubject(rs.getString("subject"));
//                tutors.add(tutor);
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return tutors;
//    }
//
//    // Add update, delete methods as needed
//}


package com.SmartTutor.dao;

import com.SmartTutor.model.Tutor;
import com.SmartTutor.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TutorDAO {

    public boolean registerTutor(Tutor tutor) {
        String sql = "INSERT INTO Tutors (username, password, email, role, subject) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, tutor.getUsername());
            stmt.setString(2, tutor.getPassword());
            stmt.setString(3, tutor.getEmail());
            stmt.setString(4, "tutor");
            stmt.setString(5, tutor.getSubject());

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Tutor> getAllTutors() {
        List<Tutor> tutors = new ArrayList<>();
        String sql = "SELECT * FROM Tutors";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Tutor tutor = new Tutor();
                tutor.setId(rs.getInt("id"));
                tutor.setUsername(rs.getString("username"));
                tutor.setEmail(rs.getString("email"));
                tutor.setPassword(rs.getString("password"));
                tutor.setSubject(rs.getString("subject"));
                tutor.setRole(rs.getString("role")); // Important fix!
                tutors.add(tutor);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return tutors;
    }
}