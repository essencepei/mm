//选择页面列显示元素列表
function selectRow(rowIndex, rowData){
	$('#caseInfoGrid').datagrid({
		queryParams: {
			id: rowData.id
		},
		url:"/pro01/caseController/CaseInfoByCaseId.do"
	});
}
$('#cc').combobox({
	url: "/pro01/ApiCaseController/Urllist.do",
	required: true,
	valueField: 'id',
	textField: 'text'
});

//选中后逻辑,选中后添加到测试用例集合
function onCheck(rowIndex,rowData){
	debugger;
	
}

function go(){
	
	//点击运行的时候将caseInfoGrid表中的数据即测试用例传到后台\
	var selects = $('#caseGrid').datagrid('getSelections');
	var ids ='';
	for(var i=0;i< selects.length;i++){
		if(i!=(selects.length-1)){
			ids=ids+selects[i].id+',';
		}else{
			ids=ids+selects[i].id;
		}
	}
	if(selects!=null&&selects.length!=0){
		$.post("/pro01/caseController/test.do",{caseIds:ids},function(data){
			
		});
	}else{
		$.messager.alert('提示','请至少选择一条记录!');
	}
	debugger;
	
}
//点击cell编辑

$.extend($.fn.datagrid.methods, {
	editCell: function(jq,param){
		return jq.each(function(){
			var opts = $(this).datagrid('options');
			var fields = $(this).datagrid('getColumnFields',true).concat($(this).datagrid('getColumnFields'));
			for(var i=0; i<fields.length; i++){
				var col = $(this).datagrid('getColumnOption', fields[i]);
				col.editor1 = col.editor;
				if (fields[i] != param.field){
					col.editor = null;
				}
			}
			$(this).datagrid('beginEdit', param.index);
			for(var i=0; i<fields.length; i++){
				var col = $(this).datagrid('getColumnOption', fields[i]);
				col.editor = col.editor1;
			}
		});
	}
});

var editIndex = undefined;
function endEditing(){
	if (editIndex == undefined){return true}
	if ($('#elementGrid').datagrid('validateRow', editIndex)){
		$('#elementGrid').datagrid('endEdit', editIndex);
		editIndex = undefined;
		return true;
	} else {
		return false;
	}
}

function onClickCell(index, field){
	debugger;
	if (endEditing()){
		$('#elementGrid').datagrid('selectRow', index)
				.datagrid('editCell', {index:index,field:field});
		editIndex = index;
	}
}

//新增
function addcase(){
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

function addstep(){
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
	        	$('#pageGrid').datagrid('reload');
	        	$('#selfDialog').dialog('close');
	        }
	    }
	});
}

//新增
function edit(){
	var selecteds = $('#pageGrid').datagrid('getSelections');
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
	$('#pageGrid').datagrid('load',{deptId:node.id});
}