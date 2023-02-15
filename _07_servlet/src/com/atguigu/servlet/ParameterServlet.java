package com.atguigu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

public class ParameterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("----doGet----");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
//        String hobby = req.getParameter("hobby");
        String[] hobbies = req.getParameterValues("hobby");

        System.out.println("username:" + username);
        System.out.println("password:" + password);
        System.out.println("hobby:" + Arrays.toString(hobbies));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        System.out.println("----doPost----");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
//        String hobby = req.getParameter("hobby");
        String[] hobbies = req.getParameterValues("hobby");

        System.out.println("username:" + username);
        System.out.println("password:" + password);
        System.out.println("hobby:" + Arrays.toString(hobbies));
    }
}
