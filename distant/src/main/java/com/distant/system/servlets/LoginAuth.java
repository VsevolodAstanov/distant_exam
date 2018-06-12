package com.distant.system.servlets;

import com.distant.system.service.daoservice.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginpage")
public class LoginAuth extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        String login = request.getParameter("login");
        String pass = request.getParameter("password");
        HttpSession session = request.getSession(true);
        if (login == null || pass == null) {
            session.setAttribute("errMsg", "Please Enter Login and Password");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
         return;
        } else {

                if (!userService.isAuthorized(login,pass)) {
                    request.setAttribute("errMsg", "Login/password does not match");
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                } else if (userService.findPosition(login).equals("student")) {
                    session.setAttribute("loginUser", "student");
                    request.getRequestDispatcher("/logout.jsp").forward(request, response);
                } else if (userService.findPosition(login).equals("teacher")) {
                    session.setAttribute("loginUser", "teacher");
                    request.getRequestDispatcher("/questions").forward(request, response);
                }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
