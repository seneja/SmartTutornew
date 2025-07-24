package com.SmartTutor.dao;

import com.SmartTutor.model.Booking;
import com.SmartTutor.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {

    // Add booking to database
    public boolean addBooking(Booking booking) {
        String sql = "INSERT INTO bookings (student_name, subject_name, lesson_name, booking_date, booking_time) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, booking.getStudentName());
            ps.setString(2, booking.getSubjectName());
            ps.setString(3, booking.getLessonName());
            ps.setString(4, booking.getBookingDate());
            ps.setString(5, booking.getBookingTime());

            int rows = ps.executeUpdate();
            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get all bookings
    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM bookings";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Booking b = new Booking();
                b.setStudentName(rs.getString("student_name"));
                b.setSubjectName(rs.getString("subject_name"));
                b.setLessonName(rs.getString("lesson_name"));
                b.setBookingDate(rs.getString("booking_date"));
                b.setBookingTime(rs.getString("booking_time"));
                bookings.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return bookings;
    }
}
