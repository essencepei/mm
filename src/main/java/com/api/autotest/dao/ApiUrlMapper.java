package com.api.autotest.dao;

import java.util.List;
import java.util.Map;

import com.api.autotest.model.Suite;

public interface ApiUrlMapper {
	//查询
	public List<Suite> queryurl(Map<String,Object> param);
	
}
