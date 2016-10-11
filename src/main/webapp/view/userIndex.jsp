<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utt-8">
        <title>person list</title>
    </head>
    <body>
        <table>
            <tr>
                <th>姓名</th>
                <th>年龄</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.name }</td>
                    <td>${user.sex }</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>