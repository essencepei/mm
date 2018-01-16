package com.pjh.util;

import java.util.HashMap;
import java.util.Map;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.Platform;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.safari.SafariDriver;

public class DriverFactory {
	private static WebDriver driver = null;

	public DriverFactory() {
		super();
	}

	public static WebDriver getDriverInstance(String browser) {
		if (driver == null) {
			driver = getDriver(browser);
		}
		return driver;
	}

	public static WebDriver getDriver(String browser) {
		// TODO Auto-generated method stub
		switch (browser) {
		case "chrome":
			return getChromeDriver();
		case "SAFARI":
			return getSafariWebDriver();
		case "IE":
			return getIEDriver();
		case "FIREFOX":
			return getFireFoxDriver();
		case "H5":
			return getH5Driver();
		}
		return getChromeDriver();
	}


	public static WebDriver getSafariWebDriver() {
		Platform current = Platform.getCurrent();
		if ((Platform.MAC.is(current)) || (Platform.VISTA.is(current)) || (Platform.WIN8.is(current))) {
			return new SafariDriver();
		}
		return null;
	}

	private static WebDriver getFireFoxDriver() {
		System.setProperty("webdriver.firefox.bin", "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe");
		return new FirefoxDriver();
	}

	private static WebDriver getIEDriver() {
		System.setProperty("webdriver.ie.driver",
				System.getProperty("user.dir") + "\\src\\test\\resources\\IEDriverServer.exe");
		DesiredCapabilities ieCapabilities = DesiredCapabilities.internetExplorer();
		ieCapabilities.setCapability("ignoreProtectedModeSettings", true);
		ieCapabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS, true);
		return new InternetExplorerDriver(ieCapabilities);
	}

	public static WebDriver getChromeDriver() {
		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "\\WebDriver\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		return driver;
	}

	public static WebDriver getH5Driver() {
		System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir") + "\\WebDriver\\chromedriver.exe");
		Map<String, String> mobileEmulation = new HashMap<String, String>();
		// 设置设备,例如:Google Nexus 7/Apple iPhone 6
		// mobileEmulation.put("deviceName", "Google Nexus 7");
		mobileEmulation.put("deviceName", "iPhone 6 Plus"); // 这里是要使用的模拟器名称，就是浏览器中模拟器中的顶部型号
		Map<String, Object> chromeOptions = new HashMap<String, Object>();
		chromeOptions.put("mobileEmulation", mobileEmulation);
		DesiredCapabilities capabilities = DesiredCapabilities.chrome();
		capabilities.setCapability(ChromeOptions.CAPABILITY, chromeOptions);
		try {
			System.out.println("开始启动driver~~~");
			// chromeOptions = webdriver.ChromeOptions();
			// ChromeOptions.add_argument("disable-infobars");
			// driver = webdriver.Chrome(chrome_options=chromeOptions);
			driver = new ChromeDriver(capabilities);
			driver.manage().window().setSize(new Dimension(434, 863));
			System.out.println("启动driver成功~~~");
		} catch (Exception e) {
			System.out.println("启动driver失败~~~");
			System.out.println(e.getMessage());
		}
		return driver;
	}

	public static void main(String[] args) {
		// driver = DriverFactory.getChromeDriver();
		// driver.get("http://order.lbd99.com/scm/web/view/login.jsp");
		// createPage cp = new createPage(driver);
		// Map<String,Object> param = new HashMap<String,Object>();
		// param.put("id", "1");
		// cp.locator(param);
	}

}
