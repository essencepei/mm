<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
		<script type="text/javascript" src="../js/user/page.js"></script>
    </head>
    <body>
    <div class="easyui-layout" style="width:100%px;height:600px;">
    <div id="content" region="north" title="Language" style="padding:5px;height:300px">
    <table id="pageGrid"class="easyui-datagrid" title="页面" style="width:100%;height:100%"
					data-options="singleSelect:true,
					collapsible:true,
					fitColumns:true,
					onSelect:selectRow,
					url:'/pro01/pageController/pageData.do',
					method:'get',
					rownumbers:true, 
					pagination:true,
					toolbar:'#tb'
					">
							<thead>
								<tr>
									<th data-options="field:'id',width:100">ID</th>
									<th data-options="field:'url',width:100">url</th>
									<th data-options="field:'cname',width:100,align:'right'">页面名称</th>
									<th data-options="field:'ename',width:100,align:'right'">英文名称</th>
								</tr>
							</thead>
				</table>
				
    </div>
    
			<div id="content" region="center"style="padding:5px;height:300px">
				<table id="elementGrid"class="easyui-datagrid" title="元素" style="width:100%;height:100%"
					data-options="singleSelect:true,
					collapsible:true,
					fitColumns:true,
					method:'get',
					rownumbers:true, 
					pagination:true,
					toolbar:'#tb'
					">
							<thead>
								<tr>
									<th data-options="field:'id',width:100">ID</th>
									<th data-options="field:'pageId',width:100">页面id</th>
									<th data-options="field:'element',width:100,align:'right'">元素名称</th>
									<th data-options="field:'findByKey',width:100,align:'right'">key</th>
									<th data-options="field:'findByValue',width:100,align:'right'">值</th>
								</tr>
							</thead>
				</table>

				<div id="tb">
					<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">新增</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">编辑</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:alert('Save')">删除</a>
				</div>
			</div>				
		</div>
		
    </body>
</html>