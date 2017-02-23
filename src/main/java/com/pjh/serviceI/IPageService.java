package com.pjh.serviceI;

import java.util.List;
import java.util.Map;

import com.pjh.model.Page;

public interface IPageService {
	//查询
	List<Page> loadPages(Map<String,Object> param);
	
	List<Page> loadPages();
}
