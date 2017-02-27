package com.pjh.util;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.model.CaseInfo;
import com.pjh.serviceI.ICaseInfoService;

public class TestCaseDefined {
	
	@Autowired
	ICaseInfoService caseInfoService ;
	
	//调用case服务获得测试用例集合，进行解析
	public void ParseCase(Map<String, Object> param) {
		List<CaseInfo> suitecase =caseInfoService.suiteCaseInfo(param);
	}

	public TestCaseDefined(ICaseInfoService caseInfoService) {
		super();
		this.caseInfoService = caseInfoService;
	}
	

}
