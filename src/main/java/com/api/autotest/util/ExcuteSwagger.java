package com.api.autotest.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.api.autotest.model.apiVO;
import com.api.autotest.model.module;
import com.api.autotest.model.parameters;
import com.api.autotest.model.Suite;
import com.pjh.util.DriverFactory;

public class ExcuteSwagger {
	List<Suite> suitelist= new ArrayList<>();
	List<module> modulelist= new ArrayList<>();
	List<parameters> parameterslist= new ArrayList<>();
	List<apiVO> apiVO= new ArrayList<>();
	
	public static void main(String[] args) throws Exception {
		List<String> urls = new ArrayList<String>();
		urls.add("http://cc.beadwallet.com:8060/loansupermarket-app/swagger-ui.html#!");
		urls.add("http://106.15.126.160:8065/loansupermarket-pay/swagger-ui.html#/");
		for(String url : urls){
//			insertSuite(url);
		    excuteUrl(url);
		}
	}
	
	public static void excuteUrl(String url){
		WebDriver driver = DriverFactory.getChromeDriver();
		driver.get(url);
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		List<WebElement> resources = driver.findElements(By.cssSelector(".resource"));
		for(WebElement resource : resources){
			module model = new module();
			getHeading(resource,model);
			clickExpand(resource,model);
		}
		driver.close();
	}
	
	public static void getHeading(WebElement resource,module model){
		WebElement a = resource.findElement(By.className("heading")).findElement(By.tagName("h2")).findElement(By.tagName("a"));
		System.out.println("model text:"+a.getText());
		model.setModelname(a.getText());
	}
	
	public static void clickExpand(WebElement resource,module model){
		resource.findElement(By.className("heading")).findElement(By.tagName("ul")).findElement(By.cssSelector(".expandResource")).click();
		WebElement endpoints = resource.findElement(By.className("endpoints"));
		getContent(endpoints,model);
	}
	
	public static void getContent(WebElement endpoints,module model){
		List<WebElement> endpoint = endpoints.findElements(By.className("endpoint"));
		System.out.println("接口个数：：："+endpoint.size());
		for(WebElement point : endpoint){
			WebElement h3 =	point.findElement(By.tagName("h3"));
//			getMethodPath(h3);
			WebElement form = point.findElement(By.cssSelector(".content")).findElement(By.tagName("form"));
			excuteFrom(form);
		}
	}
	
	public static void getMethodPath(WebElement h3,apiVO api){
		String method = h3.findElements(By.tagName("a")).get(0).getText();
		String path = h3.findElements(By.tagName("a")).get(1).getText();
		api.setMethod(method);
		api.setPath(path);
		System.out.println("method:"+method+"---------"+"path:"+path);
	}

	public static void excuteFrom(WebElement form) {
		List<Map<String,String>> paramters = new ArrayList<Map<String,String>>();
		List<WebElement> trs = form.findElements(By.tagName("tr"));
//		form有没有tr
		if(trs.size() > 0){
			trs.remove(0);
			System.out.println(trs.size());
			for(WebElement tr :trs){
				paramters.add(ExcuteTd(tr));
			}
		}else{
			Map<String,String> map = new HashMap<String,String>();
			map.put("parameter", "");
			map.put("isrequired", "");
			map.put("parametertype","");
			map.put("datatype", "");
			map.put("description", "");
			System.out.println("parameter:"+map.get("parameter") +"\n"+"isrequired:"+map.get("isrequired") +"\n"
					+"parametertype:"+map.get("parametertype") +"\n"+"datatype:"+map.get("datatype") +"\n"+"description:"+map.get("description"));
			paramters.add(map);
		}
	}

	private static Map<String,String> ExcuteTd(WebElement tr) {
		Map<String,String> map = new HashMap<String,String>();
		List<WebElement> tds = tr.findElements(By.tagName("td"));
//		是否能找到元素
		try {
			String description = tds.get(2).findElement(By.tagName("p")).getText();
			String parameter = tds.get(0).findElement(By.tagName("label")).getText();
			String isrequired = tds.get(1).findElement(By.tagName("input")).getAttribute("placeholder");
			String parametertype = tds.get(3).getText();
			String datatype = tds.get(4).findElement(By.tagName("span")).getText();
			map.put("parameter", parameter);
			map.put("isrequired", isrequired);
			map.put("parametertype",parametertype);
			map.put("datatype", datatype);
			map.put("description", description);
		} catch (Exception e) {
			map.put("parameter", "");
			map.put("isrequired", "");
			map.put("parametertype","");
			map.put("datatype", "");
			map.put("description","");
		}
		System.out.println("parameter:"+map.get("parameter") +"\n"+"isrequired:"+map.get("isrequired") +"\n"
				+"parametertype:"+map.get("parametertype") +"\n"+"datatype:"+map.get("datatype") +"\n"+"description:"+map.get("description"));
		return map;
	}
	
}
