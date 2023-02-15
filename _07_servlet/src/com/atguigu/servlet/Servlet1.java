package com.atguigu.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        System.out.println("Servlet1 username:" + username);

        req.setAttribute("key", "from Servlet1");

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/servlet2");

        requestDispatcher.forward(req,resp);
    }
}
