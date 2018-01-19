package com.api.autotest.serviceI;

import java.util.List;
import java.util.Map;

import com.api.autotest.model.Suite;
import com.api.autotest.model.apiVO;

public interface IApiUrlService {

	List<Suite> loadApi(Map<String, Object> param);

}
