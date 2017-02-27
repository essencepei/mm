package com.pjh.dao;

import java.util.List;
import java.util.Map;
import com.pjh.model.Case;

public interface CaseMapper {
	//查询
	public List<Case> querycase(Map<String,Object> param);
	//插入记录
	public void insert(Case cases);
	//更新
	public void update(Case cases);
}
