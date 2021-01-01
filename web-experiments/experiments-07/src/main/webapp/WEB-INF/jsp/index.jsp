<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Query</h2>
<h4>全部用户</h4>
<ul>
    <c:forEach items="${users}" var="u">
        <li>${u.name }</li>
    </c:forEach>
</ul>
<hr>
<h2>Update</h2>
<h4>修改指定用户</h4>
<form action="update" method="post">
    <select name="uid">
        <c:forEach items="${users }" var="u">
            <option value="${u.id }">${u.name }</option>
        </c:forEach>
    </select>
    new name:<input type="text" name="name" required>
    <br><br>
    <button type="submit">提交</button>
</form>
<hr>
<h2>Query</h2>
<ul>
    <c:forEach items="${users}" var="u">
        <li><a href="getuser?uid=${u.id}">${u.name}</a></li>
    </c:forEach>
</ul>
</body>
