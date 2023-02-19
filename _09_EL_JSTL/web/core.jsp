<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/18
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    保存之前：${ requestScope.abc }<br/>
    <c:set scope="request" var="abc" value="abcValue"/>
    保存之后：${ requestScope.abc }<br/>
    <hr>
    <c:if test="${ 12 == 12 }">
        <h1>12等于12</h1>
    </c:if>
    <c:if test="${ 12 != 12 }">
        <h1>12不等于12</h1>
    </c:if>
    <hr>
    <%
        request.setAttribute("height",160);
    %>
    <c:choose>
        <c:when test="${ requestScope.height > 190 }">
            <h2>小巨人</h2>
        </c:when>
        <c:when test="${ requestScope.height > 180 }">
            <h2>很高</h2>
        </c:when>
        <c:when test="${ requestScope.height > 170 }">
            <h2>还可以</h2>
        </c:when>
        <c:otherwise>
            <c:choose>
                <c:when test="${requestScope.height > 160}">
                    <h3>大于 160</h3>
                </c:when>
                <c:when test="${requestScope.height > 150}">
                    <h3>大于 150</h3>
                </c:when>
                <c:when test="${requestScope.height > 140}">
                    <h3>大于 140</h3>
                </c:when>
                <c:otherwise>
                    其他小于 140
                </c:otherwise>
            </c:choose>
        </c:otherwise>
    </c:choose>
</body>
</html>
