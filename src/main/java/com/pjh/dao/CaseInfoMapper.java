package com.pjh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.pjh.model.CaseInfo;

public interface CaseInfoMapper {
	//查询
	public List<CaseInfo> querycaseinfo(Map<String,Object> param);
	//通过页面名称查询页面元素
	public List<CaseInfo> queryByPageName(String param);
	List<CaseInfo> queryPageIdByCaseId(int id);
	
	
}
