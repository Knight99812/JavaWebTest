<%@ page import="com.atguigu.pojo.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: shihaojie
  Date: 2023/2/18
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Person person = new Person();
        person.setName("杰哥好帅");
        person.setPhones(new String[] {"18610541354","18688886666","18699998888"});
        List<String> cities = new ArrayList<>();
        cities.add("北京");
        cities.add("上海");
        cities.add("深圳");
        person.setCities(cities);
        Map<String,Object> map = new HashMap<>();
        map.put("key1","value1");
        map.put("key2","value2");
        map.put("key3","value3");
        person.setMap(map);

        pageContext.setAttribute("p",person);
    %>

    输出Person： ${ p }<br/>
    输出Person的name属性： ${ p.name }<br/>
    输出Person的phones数组属性值： ${ p.phones[0] }<br/>
    输出Person的cities集合中的元素值： ${ p.cities }<br/>
    输出Person的cities集合中的个别元素值： ${ p.cities[0] }<br/>
    输出Person的map集合： ${ p.map }<br/>
    输出Person的map集合中的某个key的值： ${ p.map.key1 }<br/>
    输出Person的age属性： ${ p.age }<br/>
</body>
</html>
