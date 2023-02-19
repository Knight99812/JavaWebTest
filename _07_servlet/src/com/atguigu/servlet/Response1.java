package com.atguigu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Response1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Response1");

        req.setAttribute("key1", "value1");

//        resp.setStatus(302);
//        resp.setHeader("Location", "http://localhost:8080/_07_servlet/response2");
//        resp.setHeader("Location", "http://localhost:8080/_07_servlet/WEB-INF/form.html");
//        resp.setHeader("Location", "http://www.baidu.com");

        resp.sendRedirect("http://localhost:8080/_07_servlet/response2");
    }
}
