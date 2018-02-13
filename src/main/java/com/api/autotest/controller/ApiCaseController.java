package com.api.autotest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.api.autotest.model.ApiVO;
import com.api.autotest.model.Parameters;
import com.api.autotest.util.GetResponse;

@Controller
@RequestMapping("/ApiCaseController")
public class ApiCaseController {
	@RequestMapping(value = "/ApiCaseList.do",method = RequestMethod.GET)
	public ModelAndView AddCase(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("apiCaseManage");
		return mav;
	}
	
	@RequestMapping(value = "/Urllist.do")
	public void PackagingApi(){
		ApiVO apivo = new ApiVO();
		List<Parameters> paramlist = new ArrayList<>();
		Parameters param = new Parameters();
		param.setParameter("phone");
		param.setIsrequired("13596029602");
		param.setParametertype("query");
		param.setDescription("手机号");
		param.setDatatype("integer");
		paramlist.add(param);
		Parameters param1 = new Parameters();
		param1.setParameter("pwd");
		param1.setIsrequired("123456");
		param1.setParametertype("query");
		param1.setDescription("密码");
		param1.setDatatype("integer");
		paramlist.add(param1);
		Parameters param2 = new Parameters();
		param2.setParameter("channel");
		param2.setIsrequired("4");
		param2.setParametertype("query");
		param2.setDescription("渠道id");
		param2.setDatatype("integer");
		paramlist.add(param2);
		apivo.setMethod("POST");
		apivo.setPath("/user/login");
		apivo.setParamlist(paramlist);
		GetResponse gre = new GetResponse();
		String response = gre.GetResponse(apivo);
		System.out.println(response);
	}

/*	private String getResponse(ApiVO apivo) {
		// TODO Auto-generated method stub
		String response = new String();
		String method =apivo.getMethod();
		String ip="http://106.14.97.38/loansupermarket-app";
		String url = ip+apivo.getPath();
		Map params = new HashMap();
		List<Parameters> pl = apivo.getParamlist();
		for(Parameters p :pl){
			params.put(p.getParameter(), p.getIsrequired());
		}
		HttpUtil ht = new HttpUtil();
		switch(method){
			case "GET":response =ht.doGet(url);
			break; 
			case "POST":response =ht.doPost(url, params);
			break; 
			case "DELETE":
				break; 
			case "HEAD":
				break; 
			case "OPTIONS":
				break; 
			case "PATCH":
				break; 
			case "PUT":
				break; 
		}
		return response;
	}*/

}
