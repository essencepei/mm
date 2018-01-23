package com.api.autotest.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.autotest.dao.ApiUrlMapper;
import com.api.autotest.model.Suite;
import com.api.autotest.serviceI.IApiUrlService;

@Service("apiUrlService")
public class ApiUrlServiceImpl implements IApiUrlService{
	
	private ApiUrlMapper apiUrlInfoMapper;
	
	public ApiUrlMapper getApiUrlInfoMapper() {
		return apiUrlInfoMapper;
	}
	@Autowired
	public void setApiUrlInfoMapper(ApiUrlMapper apiUrlInfoMapper) {
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
