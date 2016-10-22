package com.pjh.dao;

import java.util.List;
import java.util.Map;

import com.pjh.model.Dept;

public interface DeptMapper {
	//查询
	public List<Dept> queryTree(Map<String,Object> param);
	
}
