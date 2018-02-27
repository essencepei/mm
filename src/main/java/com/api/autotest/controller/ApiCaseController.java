package com.api.autotest.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.api.autotest.model.ApiVO;
import com.api.autotest.model.Module;
import com.api.autotest.model.StepVO;
import com.api.autotest.model.Suite;
import com.api.autotest.util.Calculate;
import com.api.autotest.util.GetResponse;
import com.api.autotest.util.ParametersFactory;

@Controller
@RequestMapping("/ApiCaseController")
public class ApiCaseController {
	@RequestMapping(value = "/ApiCaseList.do", method = RequestMethod.GET)
	public ModelAndView AddCase() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("apiCaseManage");
		return mav;
	}

	@RequestMapping(value = "/Urllist.do")
	public void PackagingApi(@RequestBody String stepvo) throws Exception {
		StepVO step = JSON.parseObject(stepvo, new TypeReference<StepVO>() {});
		String name = step.getName();
		ApiVO apivo = step.getApivo();
		Module module = step.getModule();
		Suite suite = step.getSuite();
		GetResponse gre = new GetResponse();
		String response = gre.GetResponse(apivo);
		step.setResponse(response);
		step.setApivo(apivo);
		System.out.println(response);
		// assertion
		Inspectoscope(step);
		// 判断是否需要提取参数
		if (step.getTransfer() != null) {
			ParametersFactory.GetParameter(step);
		}
	}

	public static String Inspectoscope(StepVO step) throws IOException {
		ParametersFactory Parameters = new ParametersFactory();
		String CheckStr[] = step.getCheckStr().split(",");
		String response = step.getResponse();
		Calculate calculate = new Calculate();

		for (int i = 0; i < CheckStr.length; i++) {
			String CheckArrStr = Parameters.Extraction(CheckStr[i]);
			if (calculate.calculate(CheckArrStr, response) == false) {
				step.setCheckList("【Fail 校验失败】 步骤名：" + step.getName() + "检查点 : " + CheckArrStr);
				step.setResult(false);
			} else {
				step.setCheckList("【Pass 校验成功】 步骤名：" + step.getName() + "检查点 : " + CheckArrStr);
			}
		}
		return null;
	}

}
