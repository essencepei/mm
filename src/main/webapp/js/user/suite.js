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
			handler:addSave
		},{
			text:'关闭',
			handler:function(){
				dialog.dialog('close');
			}
		}]
	});
}

function addSave(){
	$('#addSuiteForm').form('submit', {
	    url:"/pro01/SuiteController/addSuite.do",
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

function delSuite(){
	var selects = $('#suiteGrid').datagrid('getSelections');
	var ids =[];
	for(var i=0;i< selects.length;i++){
		var id = selects[i].id;
		ids.push(id);
	}
	
	if(selects!=null&&selects.length!=0){
		$.post("/pro01/SuiteController/delSuite.do",{"ids":ids},function(data){
			if(data=='success'){
				$.messager.alert('提示','成功!');
				$('#suiteGrid').datagrid('reload');
			}
		});
	}else{
		$.messager.alert('提示','请至少选择一条记录!');
	}
}

function editsuite(){
	var selecteds = $('#suiteGrid').datagrid('getSelections');
	if(selecteds.length!=1){
		$.messager.alert('提示','请选取一行记录进行操作！');
		return;
	}
	dialog = $('#dialog').dialog({
	    title: '编辑',
	    width: 500,
	    height: 300,
	    closed: false,
	    cache: false,
	    href: '/pro01/view/updateSuite.jsp',
	    onLoad:function(){
	    	$('#updateSuiteForm').form('load',selecteds[0]);
	    },
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:updateSave
		},{
			text:'关闭',
			handler:function(){
				dialog.dialog('close');
			}
		}]
	});
}
function updateSave(){
	$('#updateSuiteForm').form('submit', {
	    url:"/pro01/SuiteController/updateSuite.do",
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
		$.post("/pro01/SuiteController/excuteUrl.do",{url:urls},function(data){
			if(data=='success'){
				$.messager.alert('提示','成功!');
			}
		});
	}else{
		$.messager.alert('提示','请至少选择一条记录!');
	}
}



