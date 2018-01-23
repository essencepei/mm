<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utt-8">
        <title></title>
    </head>
    <body>
    	<form id="updateSuiteForm" method="post">
    		 <input id="id" type="hidden" name="id" /> 
	    	<table cellpadding="2">
	    		<tr>
	    			<td>链接地址</td>
	    			<td>
	    				<input class="easyui-textbox" name="suite_url" id = "suite_url" data-options="required:true"></input>
	    			</td>
	    		</tr>
	    	</table>
	    </form>
    </body>
</html>