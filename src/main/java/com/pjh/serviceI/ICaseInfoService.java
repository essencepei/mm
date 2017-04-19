package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.CaseInfo;

public interface ICaseInfoService {
	//查询
	List<CaseInfo> loadCaseInfo(Map<String,Object> param);

	List<CaseInfo> suiteCaseInfo(Map<String, Object> param);
	List<CaseInfo> queryPageIdByCaseId(int id);
	
}
