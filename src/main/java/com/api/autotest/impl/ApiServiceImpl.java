package com.api.autotest.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.api.autotest.dao.ApiMapper;
import com.api.autotest.model.ApiVO;
import com.api.autotest.serviceI.IAPIService;
/**
 * 
 * @author lcy
 *
 */
@Service("apiServiceImpl")
public class ApiServiceImpl implements IAPIService {

	@Autowired
	private ApiMapper apiMapper;
	
	/**
	 * 
	 */
	@Override
	public void addApi(ApiVO apivo) {
		apiMapper.addApi(apivo);
	}


}
