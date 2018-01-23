package com.api.autotest.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.autotest.dao.SuiteMapper;
import com.api.autotest.model.Suite;
import com.api.autotest.serviceI.ISuiteService;

@Service("apiUrlService")
public class SuiteServiceImpl implements ISuiteService{
	
	private SuiteMapper apiUrlInfoMapper;
	
	public SuiteMapper getApiUrlInfoMapper() {
		return apiUrlInfoMapper;
	}
	@Autowired
	public void setApiUrlInfoMapper(SuiteMapper apiUrlInfoMapper) {
		this.apiUrlInfoMapper = apiUrlInfoMapper;
	}
	
	@Override
	public List<Suite> loadApi(Map<String, Object> param) {
		return apiUrlInfoMapper.queryurl(param);
	}
	
	@Override
	public void updateSuite(Suite suite) {
		apiUrlInfoMapper.updateSuite(suite);;
	}
	@Override
	public void addSuite(Suite suite) {
		apiUrlInfoMapper.addSuite(suite);;
	}
	@Override
	public void delSuite(int id) {
		apiUrlInfoMapper.delSuite(id);
	}

}
