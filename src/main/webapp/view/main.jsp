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
		<script type="text/javascript" src="../js/user/main.js"></script>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'West',split:true" style="width:20%;">
    	<div class="easyui-accordion" >
		<div title="接口" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0);" onclick="openIf('/urlController/urlList.do');"><p>接口地址管理</p></a>
			<a href="javascript:void(0);" onclick="openIf('/urlController/urlList.do');"><p>查看接口</p></a>
		</div>
		
		<div title="接口测试用例管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0);" onclick="openIf('');"><p>页面元素管理</p></a>
		</div>
		
		<div title="UI" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0);" onclick="openIf('/elementController/elementlist.do');"><p>页面元素管理</p></a>
		</div>
		<div title="UI测试用例管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0);" onclick="openIf('/caseController/caseList.do');"><p>测试用例管理</p></a>
		</div>
	</div>
    
    </div>
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    	<iframe name="mainFrame" id="mainFrame" frameborder="0" src="" style="margin:0 auto;width:100%;height:100%;"></iframe>
    </div>
</body>
</html>