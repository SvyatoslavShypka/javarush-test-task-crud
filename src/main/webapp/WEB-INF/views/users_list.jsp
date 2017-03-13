<%--
  Created by IntelliJ IDEA.
  User: Artyom
  Date: 8.3.17
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>All Users</title>
</head>
<body>
<div align="center">
    <h1>User List</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron">
                    <div class="text-center">
                        <form method="post" action="search_user">
                            <input type="text" name="name" placeholder="Enter search name"/>
                            <input type="submit" value="Search"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="pagination">
        <c:url value="/" var="prev">
            <c:param name="page" value="${page-1}"/>
        </c:url>
        <c:if test="${page > 1}">
            <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
        </c:if>
        <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
            <c:choose>
                <c:when test="${page == i.index}">
                    <span>${i.index}</span>
                </c:when>
                <c:otherwise>
                    <c:url value="/" var="url">
                        <c:param name="page" value="${i.index}"/>
                    </c:url>
                    <a href='<c:out value="${url}" />'>${i.index}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:url value="/" var="next">
            <c:param name="page" value="${page + 1}"/>
        </c:url>
        <c:if test="${page + 1 <= maxPages}">
            <a href='<c:out value="${next}" />' class="pn next">Next</a>
        </c:if>
    </div>
    <table border="1">
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>isAdmin</th>
        <th>createdDate</th>
        <th>Action</th>
        <c:forEach var="user" items="${userList}">
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
        New User Register <a href="newUser">here</a>
    </h4>
</div>
</body>
</html>