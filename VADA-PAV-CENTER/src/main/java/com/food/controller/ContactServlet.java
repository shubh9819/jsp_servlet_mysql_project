package com.food.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ContactServlet")  // Servlet URL mapping
public class ContactServlet extends HttpServlet {

    // Database connection parameters
    private String dbURL = "jdbc:mysql://localhost:3306/shubham";
    private String dbUser = "root";  
    private String dbPass = "Aptech@123";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        String name = request.getParameter("cname");
        String email = request.getParameter("email");
        String message = request.getParameter("message"); 
        
        String query = "INSERT INTO feedback (name, email, message) VALUES (?, ?, ?)";

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, message);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                out.println("<h2>Feedback submitted!</h2>");
            } else {
                out.println("<h2>Error:Please try again...</h2>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
