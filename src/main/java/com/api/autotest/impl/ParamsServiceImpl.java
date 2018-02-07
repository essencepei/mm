package com.api.autotest.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.api.autotest.dao.ParamsMapper;
import com.api.autotest.model.Parameters;
import com.api.autotest.serviceI.IParamsService;

@Service("paramsService")
public class ParamsServiceImpl implements IParamsService {
	@Autowired
	private ParamsMapper paramsmapper;
	
	@Override
	public void addParams(Parameters params) {
		// TODO Auto-generated method stub
		paramsmapper.addParams(params);
	}

}
