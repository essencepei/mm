package com.pjh.util;

import java.util.HashMap;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.dao.CaseInfoMapper;
import com.pjh.dao.CaseMapper;
import com.pjh.dao.ElementMapper;
import com.pjh.dao.PageMapper;

public class BasePage {
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
	
	HashMap<String, Locator> locatorMap;
	
	public static void main(String[] args) {
		WebDriver driver =  null;
		
	}
	

}
