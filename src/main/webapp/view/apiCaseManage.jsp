<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utt-8">
<title>person list</title>
<link rel="stylesheet" type="text/css"
	href="../esayui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../esayui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="../esayui/demo.css">
<script type="text/javascript" src="../esayui/jquery.min.js"></script>
<script type="text/javascript" src="../esayui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../esayui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../js/user/case.js"></script>
</head>
<body class="easyui-layout">
	<input id="cc" class="easyui-combobox" name="suite"
		data-options="valueField:'id',textField:'suite_url',
	style="width:100px" ></input>
	<div id="tb1"><a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="testAjax()">新增</a></div>
</body>
<script type="text/javascript">
function testAjax() {
	var suite = {'id':'44','suite_url':'http://106.14.97.38/loansupermarket-app/swagger-ui.html#!'};
	var module = {'id':'115','name':'login-controller','Suite_id':'44'};
	var parameters = [{'parameter':'phone','isrequired':"13596029602",'parametertype':'query','description':'手机号','datatype':'String'}
	,{'parameter':'pwd','isrequired':"123456",'parametertype':'query','description':'密码','datatype':'String'}
	,{'parameter':'channel','isrequired':"4",'parametertype':'query','description':'渠道号','datatype':'String'}]
	var apivo = {'method':'POST','path':'/user/login','Paramlist':parameters};
	var step = {'name':'登录','CheckStr':'000','apivo':apivo,'suite':suite,'module':module};

	   $.ajax({
	        type:'POST',
	        data:JSON.stringify(step),
	        contentType :'application/json',
	        dataType:'json',
	        url :'/pro01/ApiCaseController/Urllist.do',
	        success :function(data) {
	            alert("OK");
	        },
	       error :function(e) {
	          alert("error");
	       }})     
	}
</script>
</html>