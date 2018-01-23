var dialog;

function addsuite(){
	dialog = $('#dialog').dialog({
	    title: '添加链接',
	    width: 500,
	    height: 200,
	    closed: false,
	    cache: false,
	    href: '/pro01/view/addSuite.jsp',
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:addOrUpdateSave
		},{
			text:'关闭',
			handler:function(){
				dialog.dialog('close');
			}
		}]
	});
}

function delSuite(){
	var selects = $('#suiteGrid').datagrid('getSelections');
	var ids =[];
	for(var i=0;i< selects.length;i++){
		var id = selects[i].id;
		ids.push(id);
	}
	
	if(selects!=null&&selects.length!=0){
		$.post("/pro01/urlController/delSuite.do",{"ids":ids},function(data){
			if(data=='success'){
				$.messager.alert('提示','成功!');
				$('#suiteGrid').datagrid('reload');
			}
		});
	}else{
		$.messager.alert('提示','请至少选择一条记录!');
	}
}
//新增保存
//function addOrUpdateSave(){
//	top.$('form').form('submit', {
//	    url:'/pro01/urlController/addOrUpdateSuite.do',
//	    success:function(data){
//	        if(data){
//	        	$.messager.alert('提示','保存成功!');
//	        	$('#userGrid').datagrid('reload');
//	        	$('#suiteGrid').dialog('close');
//	        }
//	    }
//	});
//}
function addOrUpdateSave(){
//	 var params = {"suite_url":$("#suite_url").val()}
//	 $.ajax({
//	      type: "POST",
//	      url: "/pro01/urlController/addOrUpdateSuite.do",
//	      data: params,
//	      dataType : "json",
//	      success: function(msg){
//		        if(msg=='success'){
//	        	$.messager.alert('提示','保存成功!');
//	        	$('#suiteGrid').datagrid('reload');
//	        	dialog.dialog('close');
//	        }
//	      }
//	   });
	
	$('#addSuiteForm').form('submit', {
	    url:"/pro01/urlController/addOrUpdateSuite.do",
	    onSubmit: function(){
			//驗證暫時省略TODO
	    },
	    success:function(data){
			if(data=='success'){
				$.messager.alert('提示','成功!');
				dialog.dialog('close');
				$('#suiteGrid').datagrid('reload');
			}
	    }
	});
}

function excuteurl(){
	var selects = $('#suiteGrid').datagrid('getSelections');
	var urls ='';
	for(var i=0;i< selects.length;i++){
		urls=urls+selects[i].suite_url+',';
	}
	
	if(selects!=null&&selects.length!=0){
		$.post("/pro01/urlController/excuteUrl.do",{url:urls},function(data){
			if(data=='success'){
				$.messager.alert('提示','成功!');
			}
		});
	}else{
		$.messager.alert('提示','请至少选择一条记录!');
	}
}



