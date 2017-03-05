package com.pjh.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.model.CaseInfo;
import com.pjh.model.Element;
import com.pjh.serviceI.ICaseInfoService;
import com.pjh.serviceI.IElementService;
import com.pjh.serviceI.IPageService;

public class createPage {
	WebDriver driver;
	@Autowired
	IPageService pageservice;
	@Autowired
	IElementService elmentservice;
	@Autowired
	ICaseInfoService caseInfoService;
	public createPage() {
		
	}
	public createPage(WebDriver driver,IElementService elmentservice,ICaseInfoService caseInfoService) {
		super();
		this.driver = driver;
		this.elmentservice = elmentservice;
		this.caseInfoService = caseInfoService;
	}
	
	public WebElement parseElemnt(Element element){
		WebElement webElement = null;
		if(element.getFindByKey().equals("id")){
			webElement = driver.findElement(By.id(element.getFindByValue()));
		}else if(element.getFindByKey().equals("xpath")){
			webElement = driver.findElement(By.xpath(element.getFindByValue()));
		}else if(element.getFindByKey().equals("className")){
			webElement = driver.findElement(By.className(element.getFindByValue()));
		}else if(element.getFindByKey().equals("linkText")){
			webElement = driver.findElement(By.linkText(element.getFindByValue()));
		}else if(element.getFindByKey().equals("name")){
			webElement = driver.findElement(By.name(element.getFindByValue()));
		}else if(element.getFindByKey().equals("cssSelector")){
			webElement = driver.findElement(By.cssSelector(element.getFindByValue()));
		}else if(element.getFindByKey().equals("partialLinkText")){
			webElement = driver.findElement(By.partialLinkText(element.getFindByValue()));
		}else if(element.getFindByKey().equals("tagName")){
			webElement = driver.findElement(By.tagName(element.getFindByValue()));
		}
		return webElement;
		
	}
	
	public List<Map<String,Object>> locator(Map<String,Object> param) {
		List<Map<String,Object>> records = new ArrayList<Map<String,Object>>();
		List<Element> pageElements = elmentservice.loadElement(param);
		WebElement webElement = null;
		for(Element element:pageElements){
			webElement = this.parseElemnt(element);
			param.put("element", element.getElement());
			List<CaseInfo> caseInfos = caseInfoService.loadCaseInfo(param);
			//操作方法的解析
			for(CaseInfo caseInfo:caseInfos){
				records.add(this.parseAction(webElement,caseInfo));
			}
		}
		
		return records;
	}
		
	public Map<String,Object> parseAction(WebElement webElement,CaseInfo caseInfo){
		Map<String,Object> map = new HashMap<String,Object>();
		String action = caseInfo.getAction();
		if(action.equals("sendkeys")){
			webElement.sendKeys(caseInfo.getParameters());
		}else if(action.equals("click")){
			webElement.click();
		}else if(action.equals("AssertEquals")){
			
		}
		return map;
		
	}
	
}
