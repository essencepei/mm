package com.api.autotest.dao;

import java.util.List;
import java.util.Map;

import com.api.autotest.model.Suite;

public interface SuiteMapper {
	//查询
	public List<Suite> queryurl(Map<String,Object> param);
	public void addSuite(Suite suite);
	public void updateSuite(Suite suite);
	public void delSuite(int id);
}
