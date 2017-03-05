package com.pjh.util;

import java.util.HashMap;
import java.util.Map;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class DriverFactory {
	private static WebDriver driver = null;
	public static WebDriver getChromeDriver(){
		System.setProperty("webdriver.chrome.driver","C:\\Users\\harya\\git\\mm\\WebDriver\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		return driver;
	}
	
	public static void main(String[] args) {
//		driver = DriverFactory.getChromeDriver();
//		driver.get("http://order.lbd99.com/scm/web/view/login.jsp");
//		createPage cp = new createPage(driver);
//		Map<String,Object> param = new HashMap<String,Object>();
//		param.put("id", "1");
//		cp.locator(param);
	}

}
