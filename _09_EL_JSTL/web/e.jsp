<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/18
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
      request.setAttribute("emptyNull",null);
      request.setAttribute("emptyString","");
      request.setAttribute("emptyArr",new Object[]{});
      List<String> list = new ArrayList<>();
      request.setAttribute("emptyList",list);
      Map<String,Object> map = new HashMap<>();
      request.setAttribute("emptyMap",map);
    %>

    ${ empty emptyNull }<br/>
    ${ empty emptyString }<br/>
    ${ empty emptyArr }<br/>
    ${ empty emptyList }<br/>
    ${ empty emptyMap }<br/>

    <hr>
    ${ 12 == 12 ? "杰哥好帅" : "杰哥又骗人了" }
</body>
</html>
