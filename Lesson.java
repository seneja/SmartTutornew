package com.SmartTutor.model;
public class Lesson {
    private String lessonName;
    private double price;

    public Lesson() {
    }

    // Constructor, getters, and setters
    public Lesson(String lessonName, double price) {
        this.lessonName = lessonName;
        this.price = price;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
