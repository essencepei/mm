package com.pjh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.ElementMapper;
import com.pjh.dao.PageMapper;
import com.pjh.model.CaseInfo;
import com.pjh.model.Element;
import com.pjh.model.Page;
import com.pjh.serviceI.IElementService;

@Service("elementService")
public class ElementServiceImpl implements IElementService{
	
	private ElementMapper elementMapper;


	public ElementMapper getElementMapper() {
		return elementMapper;
	}
	
	@Autowired
	public void setElementMapper(ElementMapper elementMapper) {
		this.elementMapper = elementMapper;
	}
	
	public List<Element> loadElement(Map<String, Object> param) {
		return elementMapper.queryelement(param);
	}
	
	public List<Element> loadElement() {
		return elementMapper.queryelement();
	}
	
	public Element loadElment(String pageId,String elementName){
		return elementMapper.queryElementByName(pageId, elementName);
	}

	@Override
	public Element getElement(Map<String, Object> param) {
		List<Element> list = elementMapper.queryelement(param);
		return null!=list&&list.size()==1?list.get(0):null;
	}


}
