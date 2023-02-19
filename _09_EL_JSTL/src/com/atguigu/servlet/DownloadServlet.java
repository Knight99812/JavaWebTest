package com.atguigu.servlet;

import org.apache.commons.io.IOUtils;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class DownloadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String downloadFileName = "2.jpg";

        ServletContext servletContext = getServletContext();

        String mimeType = servletContext.getMimeType("/file/" + downloadFileName);
        System.out.println("下载的文件类型：" + mimeType);
        resp.setContentType(mimeType);

        resp.setHeader("Content-Disposition","attachment; filename=" + URLEncoder.encode("中国.jpg","UTF-8"));

        InputStream resourceAsStream = servletContext.getResourceAsStream("/file/" + downloadFileName);
        OutputStream outputStream = resp.getOutputStream();
        IOUtils.copy(resourceAsStream,outputStream);
    }
}
