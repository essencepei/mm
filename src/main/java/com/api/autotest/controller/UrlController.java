package com.api.autotest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.api.autotest.model.Suite;
import com.api.autotest.serviceI.IApiUrlService;
import com.api.autotest.util.ExcuteSwagger;

@Controller
@RequestMapping("/urlController")
public class UrlController {
	@Autowired
	IApiUrlService apiUrlService ;
	
	private String success = "success"; 
	private String error = "error"; 
	
	@RequestMapping(value = "/urlList.do",method = RequestMethod.GET)
	public ModelAndView page(@RequestParam Map<String,Object> param){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("suite");
		return mav;
	}
	
	@RequestMapping("/urlData.do")
	@ResponseBody
	public List<Suite> caseData(@RequestParam Map<String,Object> param){
		return apiUrlService.loadApi(param);
	}
	
	@RequestMapping(value = "/excuteUrl.do", method = RequestMethod.POST)
	@ResponseBody
	public String excuteUrl(@RequestParam Map<String,String> urls){
		String suite_urls = urls.get("url")+"";
		String msg = this.success;
		try{
			List suiteList = new ArrayList();
			Map<String,Object> param = new HashMap<String,Object>();
			for(String url : suite_urls.split(",")){
				ExcuteSwagger.excuteUrl(urls.get("url"));
//			suiteList.add(suite_urls);
			}
			
		}catch(Exception e){
			System.out.println("excuteUrl调用失败！");
			e.printStackTrace();
			msg = this.error;
		}
		return msg;
	}
	
}
