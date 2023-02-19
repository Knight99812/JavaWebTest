<%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/17
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    头部信息 <br/>
    主体内容 <br/>
<%--    <%@ include file="/include/footer.jsp"%>--%>

    <jsp:include page="/include/footer.jsp">
      <jsp:param name="username" value="bbj"/>
      <jsp:param name="password" value="root"/>
    </jsp:include>
</body>
</html>
