package com.SmartTutor.model;

public class Subject {
    private int id;
    private String subjectName;
    private String lessonName; // Previously number_of_lessons
    private String grade;
    private String stream;
    private double price;
    private String tutorUsername;


    public Subject() {
    }

    public Subject(int id, String subjectName, String lessonName, String grade, String stream, double price) {
        this.id = id;
        this.subjectName = subjectName;
        this.lessonName = lessonName;
        this.grade = grade;
        this.stream = stream;
        this.price = price;
    }

    public Subject(String subjectName, String lessonName, String grade, String stream, double price) {
        this.subjectName = subjectName;
        this.lessonName = lessonName;
        this.grade = grade;
        this.stream = stream;
        this.price = price;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getStream() {
        return stream;
    }

    public void setStream(String stream) {
        this.stream = stream;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public String getTutorUsername() {
        return tutorUsername;
    }

    public void setTutorUsername(String tutorUsername) {
        this.tutorUsername = tutorUsername;
    }
}
