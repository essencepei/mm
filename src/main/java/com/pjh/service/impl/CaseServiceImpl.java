package com.pjh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.CaseMapper;
import com.pjh.model.Case;
import com.pjh.model.Page;
import com.pjh.serviceI.ICaseService;

@Service("caseService")
public class CaseServiceImpl implements ICaseService{
	
	private CaseMapper caseMapper;
	
	public CaseMapper getCaseMapper() {
		return caseMapper;
	}
	@Autowired
	public void setCaseMapper(CaseMapper caseMapper) {
		this.caseMapper = caseMapper;
	}
	public List<Case> loadCases(Map<String, Object> param) {
		return caseMapper.querycase(param);
	}


}
