package com.pjh.dao;

import java.util.List;
import java.util.Map;

import com.pjh.model.Element;

public interface ElementMapper {
	//查询
	public List<Element> queryelement(Map<String,Object> param);
	
	public List<Element> queryelement();
	
}
