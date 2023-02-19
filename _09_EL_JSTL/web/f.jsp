<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/18
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      Map<String,Object> map = new HashMap<>();
      map.put("a.a.a", "aaaValue");
      map.put("b+b+b", "bbbValue");
      map.put("c-c-c", "cccValue");

      request.setAttribute("map",map);
    %>

    ${ map["a.a.a"] }<br/>
    ${ map["b+b+b"] }<br/>
    ${ map["c-c-c"] }<br/>
</body>
</html>
