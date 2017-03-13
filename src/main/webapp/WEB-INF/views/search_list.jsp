<%--
  Created by IntelliJ IDEA.
  User: Artyom
  Date: 9.3.17
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users Search Results</title>
</head>
<body>
<div align="center">
    <h1>Search Results</h1>
    <table border="1">
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>isAdmin</th>
        <th>createdDate</th>
        <th>Action</th>
        <c:forEach var="user" items="${result}">
            <tr align="center">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createdDate}</td>
                <td><a href="editUser?id=${user.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp; <a
                            href="deleteUser?id=${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <h4>
        Back to users list <a href="/">here</a>
    </h4>
</div>
</body>
</html>
