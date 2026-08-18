package com.boguraquiz.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Central place to open a JDBC connection to the quiz database.
 * Edit the URL / USER / PASSWORD constants to match your MySQL setup.
 */
public class DBUtil {

    private static final String URL =
            "jdbc:mysql://localhost:3306/bogura_quiz_db?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "sql@123"; // <-- change this

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL JDBC Driver not found. Add mysql-connector-j to WEB-INF/lib.", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
