package com.pjh.dao;

import java.util.List;
import java.util.Map;

import com.pjh.model.Page;

public interface PageMapper {
	//查询
	public List<Page> querypage(Map<String,Object> param);
	
	public List<Page> querypage();
	
}
