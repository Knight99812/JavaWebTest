<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.atguigu.pojo.Student" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/18
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <c:forEach begin="1" end="10" var="i">
            <tr>
                <td>第${ i }行</td>
            </tr>
        </c:forEach>
    </table>
    <hr>
    <%
        request.setAttribute("arr",new String[]{"18610541354","18688886666","18699998888"});
    %>
    <c:forEach items="${ requestScope.arr }" var="item">
        ${ item }<br/>
    </c:forEach>
    <hr>
    <%
        Map<String,Object> map = new HashMap<>();
        map.put("key1","value1");
        map.put("key2","value2");
        map.put("key3","value3");
        request.setAttribute("map",map);
    %>
    <c:forEach items="${ requestScope.map }" var="entry">
        <h3>${ entry.key } = ${ entry.value }</h3>
    </c:forEach>
    <hr>


    <%
        List<Student> studentList = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            studentList.add(new Student(i,"username"+i,"pass"+i,18+i,"phone"+i));
        }
        request.setAttribute("stus",studentList);
    %>
    <table border="1">
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>年龄</th>
            <th>电话</th>
            <th>操作</th>
        </tr>

    <c:forEach begin="2" end="7" step="2" varStatus="status" items="${ requestScope.stus }" var="stu">
        <tr>
            <td>${ stu.id }</td>
            <td>${ stu.username }</td>
            <td>${ stu.password }</td>
            <td>${ stu.age }</td>
            <td>${ stu.phone }</td>
            <td>${ status }</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
