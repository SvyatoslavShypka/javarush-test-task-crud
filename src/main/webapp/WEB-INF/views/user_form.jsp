<%--
  Created by IntelliJ IDEA.
  User: Artyom
  Date: 8.3.17
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit User</title>
</head>
<body>
<div align="center">
    <h1>Edit User</h1>
    <form:form action="saveUser" method="post" modelAttribute="user">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" pattern="[0-9A-Za-zа-яА-Я\s]{1,25}" required="true" maxlength="25"
                                autofocus="true"/></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><form:input path="age" type="number" min="1" max="999"/></td>
            </tr>
            <tr>
                <td>isAdmin:</td>
                <td><form:checkbox path="admin" value="false"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
