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
	debugger;
}