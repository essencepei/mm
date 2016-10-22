package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.Dept;

public interface IDeptService {
	//查询
	List<Dept> loadDept(Map<String,Object> param);
}
