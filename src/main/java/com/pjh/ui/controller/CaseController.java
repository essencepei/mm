package com.pjh.ui.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.openqa.selenium.WebDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.pjh.model.Case;
import com.pjh.model.CaseInfo;
import com.pjh.serviceI.ICaseInfoService;
import com.pjh.serviceI.ICaseService;
import com.pjh.serviceI.IElementService;
import com.pjh.util.DriverFactory;
import com.pjh.util.createPage;

@Controller
@RequestMapping("/caseController")
public class CaseController {
	@Autowired
	ICaseService caseService ;
	@Autowired
	ICaseInfoService caseInfoService ;
	@Autowired
	IElementService elementService ;
	
	
	@RequestMapping("/caseList.do")
	public ModelAndView page(@RequestParam Map<String,Object> param){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("caseList");
		return mav;
	}
	
	@RequestMapping("/caseData.do")
	@ResponseBody
	public List<Case> caseData(@RequestParam Map<String,Object> param){
		return caseService.loadCases(param);
	}
	
	@RequestMapping("/CaseInfoByCaseId.do")
	@ResponseBody
	public List<CaseInfo> caseInfoData(@RequestParam Map<String,Object> param){
		return caseInfoService.loadCaseInfo(param);
	}
	
	//点击运行自动执行测试用例
	@RequestMapping("/test.do")
	@ResponseBody
	public void test(@RequestParam Map<String,Object> caseIds){
		WebDriver driver = null;
		driver = DriverFactory.getChromeDriver();
		driver.get("http://order.lbd99.com/scm/web/view/login.jsp");
		createPage cp = new createPage(driver,elementService,caseInfoService);
		String ids = caseIds.get("caseIds")+"";
		List idsList = new ArrayList();
		Map<String,Object> param = new HashMap<String,Object>();
		for(String id : ids.split(",")){
			idsList.add(id);
		}
		param.put("caseIds", idsList);
		List<CaseInfo> caseInfos = caseInfoService.loadCaseInfo(param);
		List<Map<String,Object>> ss = cp.locator(caseInfos);
//		System.out.println(ss);
	}
}
