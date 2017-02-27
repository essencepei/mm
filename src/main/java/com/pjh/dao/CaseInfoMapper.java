package com.pjh.dao;

import java.util.List;
import java.util.Map;
import com.pjh.model.CaseInfo;

public interface CaseInfoMapper {
	//查询
	public List<CaseInfo> querycaseinfo(Map<String,Object> param);
	
}
