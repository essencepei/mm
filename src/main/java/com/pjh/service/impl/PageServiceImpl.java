package com.pjh.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.dao.PageMapper;
import com.pjh.model.Dept;
import com.pjh.model.Page;
import com.pjh.serviceI.IDeptService;
import com.pjh.serviceI.IPageService;

@Service("pageService")
public class PageServiceImpl implements IPageService{
	
	private PageMapper pageMapper;

	public PageMapper getPageMapper() {
		return pageMapper;
	}
	@Autowired
	public void setPageMapper(PageMapper pageMapper) {
		this.pageMapper = pageMapper;
	}

	public List<Page> loadPages(Map<String,Object> param) {
		return pageMapper.querypage(param);
	}
	
	public List<Page> loadPages() {
		return pageMapper.querypage();
	}

}
