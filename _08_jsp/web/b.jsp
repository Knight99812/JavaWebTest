<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/17
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         isErrorPage="true"
         errorPage="/error500.jsp"
         language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <!-- 这是html注释 -->
    <%
        // 单行java注释
        /* 多行
            java注释
         */
    %>
    <%-- 这是jsp注释 --%>

    <%!
        private Integer id;
        private String name;
        private static Map<String,Object> map;
    %>

    <%!
        static {
            map = new HashMap<String, Object>();
            map.put("key1", "value1");
            map.put("key2", "value2");
            map.put("key3", "value3");
        }
    %>

    <%!
        public int abc() {
            return 12;
        }
    %>

    <%!
        public static class A {
            private Integer id = 12;
            private String abc = "abc";
        }
    %>

    <%=12 %> <br/>
    <%=12.12 %> <br/>
    <%="我是字符串" %> <br/>
    <%=map %> <br/>
    <%=request.getParameter("username")%>
    <br/>

    <%
        int i = 13;
        if (i == 12) {
    %>
        <h1>杰哥好帅</h1>
    <%
        } else {
    %>
        <h1>杰哥好强</h1>
    <%
        }
    %>

    <table border="1" cellspacing="0">
    <%
        for (int j = 0; j < 10; j++) {
    %>
        <tr>
            <td>第<%=j+1%>行</td>
        </tr>
    <%
        }
    %>
    </table>
    <%
        String username = request.getParameter("username");
        System.out.println("用户名的请求参数是：" + username);
    %>

</body>
</html>
