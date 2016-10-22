//新增
function add(){
	var selectedTree = $('#deptTree').tree('getSelected');
	if(!selectedTree){
		$.messager.alert('提示','请先选择组织结构！');
		return;
	}
	$('#selfDialog').dialog({
	    title: 'My Dialog',
	    width: 500,
	    height: 300,
	    closed: false,
	    cache: false,
	    href: '/pro01/view/addUser.jsp',
	    onLoad:function(){
	    	$('#deptId').val(selectedTree.id);
	    },
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:addOrUpdateSave
		},{
			text:'关闭',
			handler:function(){
				$('#selfDialog').dialog('close');
			}
		}]
	});
}

//新增保存
function addOrUpdateSave(){
	top.$('form').form('submit', {
	    url:'/pro01/userController/addOrUpdateUser.do',
	    success:function(data){
	        if(data){
	        	$.messager.alert('提示','保存成功!');
	        	$('#userGrid').datagrid('reload');
	        	$('#selfDialog').dialog('close');
	        }
	    }
	});
}

//新增
function edit(){
	var selecteds = $('#userGrid').datagrid('getSelections');
	if(selecteds.length!=1){
		$.messager.alert('提示','请选取一行记录进行操作！');
		return;
	}
	$('#selfDialog').dialog({
	    title: '编辑',
	    width: 500,
	    height: 300,
	    closed: false,
	    cache: false,
	    href: '/pro01/view/updateUser.jsp',
	    onLoad:function(){
	    	$('#updateUserForm').form('load',selecteds[0]);
	    },
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:addOrUpdateSave
		},{
			text:'关闭',
			handler:function(){
				$('#selfDialog').dialog('close');
			}
		}]
	});
}

function selectDept(node){
	$('#userGrid').datagrid('load',{deptId:node.id});
}