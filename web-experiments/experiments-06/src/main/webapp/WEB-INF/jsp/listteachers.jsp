<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/18
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%--引入标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td> </td>
        <td>教师姓名</td>
        <td>注册时间</td>
    </tr>
    <c:forEach items="${teachers}" var="t" varStatus="s">
        <tr>
        <td>${s.count}</td>
        <td><a href="updateteacher?tid=${t.id}">${t.name}</a></td>
        <td><fmt:formatDate
                pattern="yyyy-MM-dd HH:mm"
                value="${t.inserDate}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>