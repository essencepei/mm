package com.pjh.util;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.springframework.beans.factory.annotation.Autowired;

import com.pjh.model.Element;
import com.pjh.model.Page;
import com.pjh.serviceI.IElementService;
import com.pjh.serviceI.IPageService;

public class createPage {
	WebDriver driver;
	@Autowired
	IPageService pageservice;
	@Autowired
	IElementService elmentservice;
/*	通过页面case信息从case表中获得caseid，例如casename为登录，获取caseid等于1
  * 通过caseid从caseinfo中读取对应的case信息并返回List<caseinfo>,例如caseid为1，那么pageid为1,2
 * 通过pageid到element表中根据定位元素的方法locator找到对应页面的元素并返回List<WebElement>
 * 解析caseinfo对元素的操作，调用selenium中对应的方法，sendkeys入参为String类型，获取页面元素属性等返回值为String
 * */
	private void locator(String bytype,String id) {
		//通过pageid找到id所在页面的所有元素并返回这个页面的元素集合
/*		List<Locator> pageElement = elmentservice.loadElement(pageid);
		//遍历list，返回WebElement类型的元素集合
		if(element.findbykey=="id"){
			driver.findElement(By.id(element.findbyvalue));
		}else if(element.findbykey=="xpath"){
			driver.findElement(By.xpath(element.findbyvalue));
		}else if(element.findbykey=="className"){
			driver.findElement(By.className(element.findbyvalue));
		}else if(element.findbykey=="linkText"){
			driver.findElement(By.linkText(bytype));
		}else if(element.findbykey=="name"){
			driver.findElement(By.name(bytype));
		}else if(element.findbykey=="cssSelector"){
			driver.findElement(By.cssSelector(bytype));
		}else if(element.findbykey=="partialLinkText"){
			driver.findElement(By.partialLinkText(bytype));
		}else if(element.findbykey=="tagName"){
			driver.findElement(By.tagName(bytype));
		}
*/	}
		
}
