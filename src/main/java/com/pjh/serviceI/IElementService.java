package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.CaseInfo;
import com.pjh.model.Element;

public interface IElementService {
	//查询
	List<Element> loadElement(Map<String,Object> param);
	
	
	List<Element> loadElement();
	
	Element getElement(Map<String,Object> param);
}
