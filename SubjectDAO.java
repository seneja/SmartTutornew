package com.SmartTutor.dao;

import com.SmartTutor.model.Subject;
import com.SmartTutor.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {

    public List<Subject> getAllSubjects() {
        List<Subject> subjects = new ArrayList<>();

        String sql = "SELECT * FROM subjects";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Subject s = new Subject();
                s.setId(rs.getInt("id"));
                s.setSubjectName(rs.getString("subject_name"));
                s.setLessonName(rs.getString("lesson_name"));
                s.setGrade(rs.getString("grade"));
                s.setStream(rs.getString("stream"));
                s.setPrice(rs.getDouble("price"));
                subjects.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return subjects;
    }


    public List<Subject> getSubjectsByTutor(String tutorUsername) {
        List<Subject> subjectList = new ArrayList<>();
        String sql = "SELECT * FROM subjects WHERE tutor_username = ?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, tutorUsername);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Subject subject = new Subject();
                subject.setId(rs.getInt("id"));
                subject.setSubjectName(rs.getString("subject_name"));
                subject.setLessonName(rs.getString("lesson_name"));
                subject.setGrade(rs.getString("grade"));
                subject.setStream(rs.getString("stream"));
                subject.setPrice(rs.getDouble("price"));
                subject.setTutorUsername(rs.getString("tutor_username")); // ✅ add this line

                subjectList.add(subject);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return subjectList;
    }


    // Get subject by ID
    public Subject getSubjectById(int id) {
        String sql = "SELECT * FROM subjects WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Subject subject = new Subject();
                subject.setId(rs.getInt("id"));
                subject.setSubjectName(rs.getString("subject_name"));
                subject.setLessonName(rs.getString("lesson_name"));
                subject.setGrade(rs.getString("grade"));
                subject.setStream(rs.getString("stream"));
                subject.setPrice(rs.getDouble("price"));
                subject.setTutorUsername(rs.getString("tutor_username"));
                return subject;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // Update subject details in the database
    public boolean updateSubject(Subject subject) {
        String sql = "UPDATE subjects SET subject_name=?, lesson_name=?, grade=?, stream=?, price=? WHERE id=?";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            // Set the values for the placeholders in SQL query
            ps.setString(1, subject.getSubjectName());
            ps.setString(2, subject.getLessonName());
            ps.setString(3, subject.getGrade());
            ps.setString(4, subject.getStream());
            ps.setDouble(5, subject.getPrice());
            ps.setInt(6, subject.getId());

            // Execute the update and get number of affected rows
            int rowsUpdated = ps.executeUpdate();

            // Return true if at least one row was updated
            return rowsUpdated > 0;

        } catch (Exception e) {
            e.printStackTrace();
            // In case of error, return false to indicate update failure
            return false;
        }
    }


    // Delete subject
    public boolean deleteSubject(int id) {
        String sql = "DELETE FROM subjects WHERE id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);
            int rowsDeleted = ps.executeUpdate();
            return rowsDeleted > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }



}

