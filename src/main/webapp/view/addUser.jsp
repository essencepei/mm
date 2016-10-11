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
    	<form action="/pro01/userController/addUser.do" method="post">
	        <table>
	            <tr>
	                <td>姓名:</td>
	                <td><input name="name"/></td>
	            </tr>
	            <tr>
	                <td>性别：</td>
	                <td><input name="sex"/></td>
	            </tr>
	        </table>
	        <input type="submit" value="提交"/>
    	</form>
    </body>
</html>