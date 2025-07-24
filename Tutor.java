package com.SmartTutor.model;
public class Tutor extends User {
    private String subject;

    public Tutor() {
        super();
        this.setRole("tutor");  // **Always set role = "tutor" in the constructor**
    }

    public Tutor(String username, String password, String email, String subject) {
        super(username, password, email, "tutor");  // set role in super constructor
        this.subject = subject;
    }

    // getter and setter for subject
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}

