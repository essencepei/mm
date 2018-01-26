package com.api.autotest.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.api.autotest.model.ApiVO;
import com.api.autotest.model.Module;
import com.api.autotest.model.Parameters;
import com.api.autotest.model.Suite;
import com.api.autotest.serviceI.IAPIService;
import com.api.autotest.serviceI.IModuleService;
import com.api.autotest.serviceI.IParamsService;
import com.pjh.util.DriverFactory;

@Component
public class ExcuteSwagger {
	@Autowired
	public IModuleService moduleService ;
	
	@Autowired
	@Qualifier("apiServiceImpl")
	public IAPIService apiServiceImpl ;
	@Autowired
	public IParamsService paramsService ;
	
	Logger logger =LoggerFactory.getLogger(ExcuteSwagger.class);
	
	List<Suite> suitelist= new ArrayList<>();
	List<Module> modulelist= new ArrayList<>();
	List<Parameters> parameterslist= new ArrayList<>();
	List<ApiVO> apiVO= new ArrayList<>();
	
//	public static void main(String[] args) throws Exception {
//		
//		
//	}
	
	public void excuteUrl(Suite suite){
		WebDriver driver = DriverFactory.getDriver("chrome");
		driver.get(suite.getSuite_url());
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		List<WebElement> resources = driver.findElements(By.cssSelector(".resource"));
		for(WebElement resource : resources){
			Module ss = getHeading(resource,suite);
//			ApiVO api = new ApiVO();
//			api.setModule_id(ss.getId());
			clickExpand(resource,ss);
		}
		driver.close();
	}
	
	
	public Module getHeading(WebElement resource,Suite suite){
		WebElement a = resource.findElement(By.className("heading")).findElement(By.tagName("h2")).findElement(By.tagName("a"));
		System.out.println("model text:"+a.getText());
		Module module = new Module();
		module.setSuite_id(suite.getId());
		module.setModulename(a.getText());
//		存module表==============
		moduleService.addModule(module);
		
		return module;
	}
	
	public void clickExpand(WebElement resource,Module module){
		resource.findElement(By.className("heading")).findElement(By.tagName("ul")).findElement(By.cssSelector(".expandResource")).click();
		WebElement endpoints = resource.findElement(By.className("endpoints"));
		getContent(endpoints,module);
	}
	
	public void getContent(WebElement endpoints,Module module){
		List<WebElement> endpoint = endpoints.findElements(By.className("endpoint"));
		logger.info("接口个数：：："+endpoint.size());
		String yoyo = module.getModulename();
		Module haha = moduleService.querymodule_id(yoyo);
		Integer module_id = moduleService.querymodule_id(module.getModulename()).getId();
		for(WebElement point : endpoint){
			ApiVO api = new ApiVO();
			api.setModule_id(module_id);
			WebElement h3 =	point.findElement(By.tagName("h3"));
			logger.info("接口路徑"+h3.getText());
			getMethodPath(h3,api);
			WebElement form = point.findElement(By.cssSelector(".content")).findElement(By.tagName("form"));
//			处理form表单，存parameter
			excuteForm(form);
		}
	}
	
	public  ApiVO getMethodPath(WebElement h3,ApiVO api){
		String method = h3.findElements(By.tagName("a")).get(0).getText();
		String path = h3.findElements(By.tagName("a")).get(1).getText();
		api.setMethod(method);
		api.setPath(path);
		logger.info("method:"+method+"---------"+"path:"+path);
//		存api表 ====
		apiServiceImpl.addApi(api);
		return api;
	}

	public void excuteForm(WebElement form) {
		List<Map<String,String>> paramters = new ArrayList<Map<String,String>>();
		List<WebElement> trs = form.findElements(By.tagName("tr"));
//		form有没有tr
		if(trs.size() > 0){
			trs.remove(0);
			System.out.println(trs.size());
			for(WebElement tr :trs){
				logger.info("trtrtrtr----------"+tr.getText());
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

	private Map<String,String> ExcuteTd(WebElement tr) {
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
