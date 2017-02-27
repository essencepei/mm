package com.pjh.controller;

import java.util.List;
import java.util.Map;

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

@Controller
@RequestMapping("/caseController")
public class CaseController {
	@Autowired
	ICaseService caseService ;
	@Autowired
	ICaseInfoService caseInfoService ;
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
}
