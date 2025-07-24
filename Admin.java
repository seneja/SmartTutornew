package com.SmartTutor.model;

public class Admin extends User {

    public Admin() {
        super();
        setRole("admin"); // Ensure role is always "admin"
    }

    public Admin(String username, String password, String email) {
        super(username, password, email, "admin");
    }

}
