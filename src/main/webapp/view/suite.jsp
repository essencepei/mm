<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utt-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="../esayui/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../esayui/themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../esayui/demo.css">
		<script type="text/javascript" src="../esayui/jquery.min.js"></script>
		<script type="text/javascript" src="../esayui/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="../esayui/locale/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="../js/user/suite.js"></script>
    </head>
    <body class="easyui-layout">
    <div id="tb1">
					<a id="btn1" href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addsuite()">新增</a>
					<a id="btn2" href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editsuite()">编辑</a>
					<a id="btn3" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:alert('Save')">删除</a>
					<a id="btn4" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="savesuite()">保存</a>
					<a id="btn5" href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="excuteurl()">excute</a>
					
				</div>
    <div id="content" region="north" style="padding:5px;height:300px">
    <table id="suiteGrid"class="easyui-datagrid" title="swagger地址" style="width:100%;height:100%"
					data-options="singleSelect:false,
					collapsible:true,
					fitColumns:true,
					url:'/pro01/urlController/urlData.do',
					rownumbers:true, 
					pagination:true,
					toolbar:'#tb1'
					">
							<thead>
								<tr>
									<th data-options="field:'ck',checkbox:true"></th>
									<th data-options="field:'id',width:100">ID</th>
									<th data-options="field:'suite_url',width:100">swagger地址</th>
								</tr>
							</thead>
				</table>
    </div>
    </body>
    
</html>