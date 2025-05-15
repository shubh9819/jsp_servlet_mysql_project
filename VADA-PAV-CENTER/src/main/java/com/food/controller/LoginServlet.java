package com.food.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.food.dao.CustomerDaoImpl;
import com.food.dao.LoginDaoImpl;
import com.food.pojo.Customer;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    private LoginDaoImpl limpl = new LoginDaoImpl();
    private RequestDispatcher rd;
    private HttpSession session = null;
    
    public LoginServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String process = request.getParameter("process");
        session = request.getSession();
        
        if (process != null && process.equals("logout")) {
            session.invalidate();
            request.setAttribute("msg", "You have logged out successfully.");
            rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String process = request.getParameter("process");
        session = request.getSession();
        
        if (process != null && process.equals("LoginPage")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            if (limpl.checkAdmin(username, password)) {
                loginAsAdmin(username, request, response);
            } 
            else if (limpl.checkCustomer(username, password)) {
                loginAsCustomer(username, request, response);
            } 
            else {
                handleLoginFailure(request, response);
            }
        }
    }

    private void loginAsAdmin(String username, HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        session.setAttribute("login", "admin");
        session.setAttribute("username", username);
        request.setAttribute("msg", "Successfully logged in as Admin.");
        rd = request.getRequestDispatcher("index.jsp"); 
        rd.forward(request, response); 
    }

    private void loginAsCustomer(String username, HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        session.setAttribute("login", "customer");
        session.setAttribute("email", username);

        Customer c = new CustomerDaoImpl().searchCustomerByEmail(username);
        request.setAttribute("msg", "Welcome to our website, " + c.getCname());
        rd = request.getRequestDispatcher("index.jsp"); 
        rd.forward(request, response); 
    }

    private void handleLoginFailure(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setAttribute("errorMsg", "Invalid username or password. Please try again.");
        rd = request.getRequestDispatcher("index.jsp"); 
        rd.forward(request, response); 
    }
}
