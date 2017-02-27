package com.pjh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.CaseInfoMapper;
import com.pjh.dao.CaseMapper;
import com.pjh.model.CaseInfo;
import com.pjh.serviceI.ICaseInfoService;

@Service("caseInfoService")
public class CaseInfoServiceImpl implements ICaseInfoService{
	
	private CaseInfoMapper caseInfoMapper;
	
	public CaseInfoMapper getCaseInfoMapper() {
		return caseInfoMapper;
	}
	@Autowired
	public void setCaseInfoMapper(CaseInfoMapper caseInfoMapper) {
		this.caseInfoMapper = caseInfoMapper;
	}

	public List<CaseInfo> loadCaseInfo(Map<String, Object> param) {
		return caseInfoMapper.querycaseinfo(param);
	}
	
	//通过选择的测试用例，把测试步骤load进来进行解析
	public List<CaseInfo> suiteCaseInfo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return caseInfoMapper.querycaseinfo(param);
	}

}
