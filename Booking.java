package com.SmartTutor.model;

public class Booking {
    private String studentName;
    private String subjectName;
    private String lessonName;
    private String bookingDate;
    private String bookingTime;

    public Booking() {
    }

    // Constructor with 5 parameters
    public Booking(String studentName, String subjectName, String lessonName, String bookingDate, String bookingTime) {
        this.studentName = studentName;
        this.subjectName = subjectName;
        this.lessonName = lessonName;
        this.bookingDate = bookingDate;
        this.bookingTime = bookingTime;

    }

    // Getters and setters for each field (studentName, subjectName, etc.)
    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getBookingTime() {
        return bookingTime;
    }

    public void setBookingTime(String bookingTime) {
        this.bookingTime = bookingTime;
    }


}
