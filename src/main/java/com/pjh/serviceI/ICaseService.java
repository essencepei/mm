package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.Case;

public interface ICaseService {
	//查询
	List<Case> loadCases(Map<String,Object> param);
}
