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
		<script type="text/javascript" src="../js/user/case.js"></script>
    </head>
    <body>
    <div class="easyui-layout" style="width:100%px;height:600px;">
    <div id="tb1">
					<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addcase()">新增</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editcase()">编辑</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:alert('Save')">删除</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="acceptcase()">保存</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-print" plain="true" onclick="go()">运行</a>
				</div>
    <div id="content" region="north" style="padding:5px;height:300px">
    <table id="caseGrid"class="easyui-datagrid" title="用例" style="width:100%;height:100%"
					data-options="singleSelect:true,
					collapsible:true,
					fitColumns:true,
					onSelect:selectRow,
				<!--  	onCheck:onCheck, -->
					url:'/pro01/caseController/caseData.do',
					method:'get',
					rownumbers:true, 
					pagination:true,
					toolbar:'#tb1'
					">
							<thead>
								<tr>
									<th data-options="field:'ck',checkbox:true"></th>
									<th data-options="field:'casename',width:100">case名称</th>
									<th data-options="field:'description',width:100,align:'right'">概述</th>
									<th data-options="field:'modules',width:100,align:'right'">所属模块</th>
								</tr>
							</thead>
				</table>
    </div>
    
			<div id="content" region="center"style="padding:5px;height:300px">
				<table id="caseInfoGrid"class="easyui-datagrid" title="步骤" style="width:100%;height:100%"
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
									<th data-options="field:'pageid',width:50,align:'right'">页面id</th><!-- 页面id由选择页面名称后带出来 -->
									<th data-options="field:'pagename',width:50,align:'right'">页面名称</th><!--下拉选择页面，从数据库查询所有的页面对象 -->
									<th data-options="field:'element',width:100,align:'right'">元素名称</th><!--下拉选择元素，从数据库查询对应页面的元素  -->
									<th data-options="field:'action',width:50,align:'right'">动作</th>
									<th data-options="field:'parameters',width:100,align:'right'">输入值</th><!-- 可写，填写需要写的内容-->
									<th data-options="field:'returnvalue',width:100,align:'right'">返回值</th><!-- 不可写，获取数据后返回值存的这里-->
									<th data-options="field:'text',width:100,align:'right'">备注</th><!-- 不可写，获取数据后返回值存的这里-->
								</tr>
							</thead>
				</table>

				<div id="tb">
					<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">新增</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="edit()">编辑</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:alert('Save')">删除</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="accept()">保存</a>
				</div>
			</div>				
		</div>
		
    </body>
</html>