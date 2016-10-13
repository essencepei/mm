package com.pjh.util;

import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

public class PageUtil {
	private static Page<?> page;
	
	public static void startPage(Map<String,Object> param){
		if(null!=param.get("page")&&null!=param.get("rows")){
			int pageNum = Integer.valueOf(param.get("page").toString());
			int pageSize = Integer.valueOf(param.get("rows").toString());
			page = PageHelper.startPage(pageNum,pageSize,true);
		}
	}
	
	public static Long getTotal(){
		return page.getTotal();
	}
}
