//新增
function add(){
	$('#selfDialog').dialog({
	    title: 'My Dialog',
	    width: 500,
	    height: 300,
	    closed: false,
	    cache: false,
	    href: '/pro01/view/addUser.jsp',
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:addSave
		},{
			text:'关闭',
			handler:function(){
				$('#selfDialog').dialog('close');
			}
		}]
	});
}

//新增保存
function addSave(){
	$('#addUserForm').form('submit', {
	    url:'/pro01/userController/addUser.do',
	    success:function(data){
	        if(data){
	        	$.messager.alert('提示','保存成功!');
	        	$('#userGrid').datagrid('reload');
	        	$('#selfDialog').dialog('close');
	        }
	    }
	});
}