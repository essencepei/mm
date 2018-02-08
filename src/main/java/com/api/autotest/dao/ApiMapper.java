package com.api.autotest.dao;

import com.api.autotest.model.ApiVO;

public interface ApiMapper {
	void addApi(ApiVO apivo);
	ApiVO queryid(Integer module_id,String path,String method);
	ApiVO querybyapivo(ApiVO apivo);
}
