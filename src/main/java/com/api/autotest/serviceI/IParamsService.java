package com.api.autotest.serviceI;

import java.util.List;

import com.api.autotest.model.Parameters;
public interface IParamsService {
	
	void addParams(Parameters params);
	
	Parameters queryByParams(Parameters params); 
	
	void updatePrams(Parameters params);
	
	List<Parameters> queryparams(Parameters params);
}
