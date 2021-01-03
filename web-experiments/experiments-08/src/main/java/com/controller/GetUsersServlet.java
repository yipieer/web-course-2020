package com.controller;

import com.service.ServiceFactory;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getuser")
public class GetUsersServlet extends HttpServlet {
    private UserService userService= ServiceFactory.getUserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("uid"));
        req.setAttribute("user", userService.getUser(id));
        req.getRequestDispatcher("/WEB-INF/jsp/query.jsp")
                .forward(req, resp);
    }
}
