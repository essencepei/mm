package com.api.autotest.dao;

import java.util.List;
import com.api.autotest.model.Parameters;

public interface ParamsMapper {
	void addParams(Parameters params);
	
	Parameters queryByParams(Parameters params);
	
	void updateParams(Parameters params);
	
	List<Parameters> queryparams(Parameters params);
}
