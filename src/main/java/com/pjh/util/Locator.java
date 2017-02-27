package com.pjh.util;

import java.util.HashMap;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.dao.CaseInfoMapper;
import com.pjh.dao.CaseMapper;
import com.pjh.dao.ElementMapper;
import com.pjh.dao.PageMapper;

public class Locator {
	protected WebDriver driver;
	@Autowired
	CaseInfoMapper caseinfo;
	@Autowired
	CaseMapper caselist;
	@Autowired
	ElementMapper element;
	@Autowired
	PageMapper page;
	
	public enum ByType {
		xpath, id, linkText, name, className, cssSelector, partialLinkText, tagName
	}
	
	//从数据库中取出元素信息
	private void locator(String pagename) {
	//		if(element.findbykey=="id"){
//			driver.findElement(By.id(element.findbyvalue));
//		}else if(element.findbykey=="xpath"){
//			driver.findElement(By.xpath(element.findbyvalue));
//		}else if(element.findbykey=="className"){
//			driver.findElement(By.className(element.findbyvalue));
//		}
	}
	
	

}