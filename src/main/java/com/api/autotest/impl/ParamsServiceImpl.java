package com.api.autotest.impl;

import java.util.List;

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

	@Override
	public Parameters queryByParams(Parameters params) {
		// TODO Auto-generated method stub
		return paramsmapper.queryByParams(params);
	}

	@Override
	public void updatePrams(Parameters params) {
		// TODO Auto-generated method stub
		paramsmapper.updateParams(params);
	}

	@Override
	public List<Parameters> queryparams(Parameters params) {
		// TODO Auto-generated method stub
		return paramsmapper.queryparams(params);
	}
	
	

}
