package com.pjh.dao;

import java.util.List;
import java.util.Map;

import com.pjh.model.Element;

public interface ElementMapper {
	//查询
	public List<Element> queryelement(Map<String,Object> param);
	
	public List<Element> queryelement();
	
	//通过元素名称查询并返回元素
	public Element queryElementByName(String pageId,String elementName);
	
}
