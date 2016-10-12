<%@ page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utt-8">
        <title>person list</title>
        <link rel="stylesheet" type="text/css" href="../esayui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../esayui/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../esayui/demo.css">
		<script type="text/javascript" src="../esayui/jquery.min.js"></script>
		<script type="text/javascript" src="../esayui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="../esayui/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../js/user/user.js"></script>
    </head>
    <body>
    	<div class="easyui-layout" style="width:100%px;height:500px;">
			<div region="west" split="true" title="Navigator" style="width:20%;">
				
				
			</div>
			<div id="content" region="center" title="Language" style="padding:5px;">
				<table id="userGrid"class="easyui-datagrid" title="Basic DataGrid" style="width:100%;height:100%"
					data-options="singleSelect:true,
					collapsible:true,
					fitColumns:true,
					url:'/pro01/userController/userIndexForEsayUi.do',
					method:'get',
					rownumbers:true, 
					pagination:true,
					toolbar:'#tb'
					">
							<thead>
								<tr>
									<th data-options="field:'id',width:100">ID</th>
									<th data-options="field:'name',width:100">姓名</th>
									<th data-options="field:'sex',width:100,align:'right'">性别</th>
									<th data-options="field:'telehone',width:100,align:'right'">电话</th>
									<th data-options="field:'idCord',width:100">身份证</th>
								</tr>
							</thead>
				</table>
				<div id="tb">
					<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">新增</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="javascript:alert('Cut')">编辑</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:alert('Save')">删除</a>
				</div>
			</div>
		</div>
		<div id="selfDialog"></div>
    </body>
</html>