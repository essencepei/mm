package com.pjh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.DeptMapper;
import com.pjh.model.Dept;
import com.pjh.serviceI.IDeptService;

@Service("deptService")
public class DeptServiceImpl implements IDeptService{
	
	private DeptMapper deptMapper;

	
	public DeptMapper getDeptMapper() {
		return deptMapper;
	}
	@Autowired
	public void setDeptMapper(DeptMapper deptMapper) {
		this.deptMapper = deptMapper;
	}


	public List<Dept> loadDept(Map<String,Object> param) {
		return deptMapper.queryTree(param);
	}

}
