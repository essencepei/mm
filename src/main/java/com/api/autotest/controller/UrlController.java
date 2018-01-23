package com.api.autotest.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
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
	Logger logger =LoggerFactory.getLogger(UrlController.class);
	
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
	
	@RequestMapping(value = "/addOrUpdateSuite.do" ,method = RequestMethod.POST)
	@ResponseBody
	public String addSuite(Suite suite){
		String msg = this.success;
		System.out.println("suite_url");
		apiUrlService.addSuite(suite);
		return msg;
		
	}
	
	@RequestMapping(value = "/delSuite.do",method =RequestMethod.POST)
	@ResponseBody
	public String delSuite(@RequestParam(value = "ids[]") int[] ids){
		String msg = this.success;
		try {
			for(int id :ids ){
				apiUrlService.delSuite(id);
			}
		} catch (Exception e) {
			logger.error("刪除失敗");
			msg = this.error;
		}
		return msg;
	}
	
	@RequestMapping(value = "/excuteUrl.do", method = RequestMethod.POST)
	@ResponseBody
	public String excuteUrl(@RequestParam Map<String,String> urls){
		String suite_urls = urls.get("url")+"";
		String msg = this.success;
		try{
			logger.info("开始时间：：："+System.currentTimeMillis());
			for(String url : suite_urls.split(",")){
				ExcuteSwagger.excuteUrl(urls.get("url"));
			}
			logger.info("结束时间：：："+System.currentTimeMillis());
		}catch(Exception e){
			logger.error("excuteUrl调用失败！");
			e.printStackTrace();
			msg = this.error;
		}
		return msg;
	}
}
