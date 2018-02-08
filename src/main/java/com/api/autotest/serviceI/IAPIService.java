package com.api.autotest.serviceI;

import com.api.autotest.model.ApiVO;

public interface IAPIService {
	void addApi(ApiVO apivo);
	ApiVO queryid(Integer module_id,String path,String method);
	ApiVO querybyapivo(ApiVO apivo);
}
