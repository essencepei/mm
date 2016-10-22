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
    	<form id="addUserForm" method="post">
    		<input id="deptId" name="deptId" type="hidden"></input>
    		<input  name="id" type="hidden"></input>
	    	<table cellpadding="5">
	    		<tr>
	    			<!-- <td>id:</td>
	    			<td><input class="easyui-textbox" type="text" name="id" data-options="required:true"></input></td>
	    			 -->
	    			<td>姓名:</td>
	    			<td><input class="easyui-textbox" type="text" name="name" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>性别:</td>
	    			<td><input class="easyui-textbox" type="text" name="sex" data-options="required:true"></input></td>
	    			<td>电话:</td>
	    			<td><input class="easyui-textbox" name="telehone" data-options="required:true" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>身份证:</td>
	    			<td>
	    				<input class="easyui-textbox" name="idCord" data-options="required:true"></input>
	    			</td>
	    		</tr>
	    	</table>
	    </form>
    </body>
</html>