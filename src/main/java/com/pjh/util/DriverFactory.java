package com.pjh.util;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class DriverFactory {
	private static WebDriver driver = null;
	public static WebDriver getChromeDriver(){
		System.setProperty("webdriver.chrome.driver","D:\\workspace\\pro01_new\\pro01\\WebDriver\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		return driver;
	}
	
	
//	public static void main(String[] args) {
//		DriverFactory.getChromeDriver().get("http://www.baidu.com");
//	}

}
