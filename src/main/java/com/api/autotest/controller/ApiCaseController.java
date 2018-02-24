package com.api.autotest.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.api.autotest.model.ApiVO;
import com.api.autotest.model.Module;
import com.api.autotest.model.Parameters;
import com.api.autotest.model.StepVO;
import com.api.autotest.model.Suite;
import com.api.autotest.util.Calculate;
import com.api.autotest.util.GetResponse;
import com.api.autotest.util.ParametersFactory;

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
	public void PackagingApi() throws Exception{
		StepVO step = new StepVO();
		step.setName("登录");
		step.setCheckStr("000");
		Suite suite = new Suite();
		Module module = new Module();
		ApiVO apivo = new ApiVO();
		suite.setId(44);
		suite.setSuite_url("http://106.14.97.38/loansupermarket-app/swagger-ui.html#!");
		module.setId(115);
		module.setModulename("login-controller");
		module.setSuite_id(44);
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
		step.setResponse(response);
		step.setApivo(apivo);
		System.out.println(response);
		Inspectoscope(step);
		if(step.getTransfer()!=null){  //判断是否需要提取参数
            ParametersFactory.GetParameter(step);
        }
	}
	
    public static String Inspectoscope(StepVO step) throws IOException {
        ParametersFactory Parameters =new  ParametersFactory();
        String CheckStr[]=step.getCheckStr().split(",");
        String response =step.getResponse();
        Calculate calculate=new  Calculate();
        
        for(int i=0;i<CheckStr.length;i++){
          String CheckArrStr=Parameters.Extraction(CheckStr[i]);
          if(calculate.calculate(CheckArrStr,response)==false){
              step.setCheckList("【Fail 校验失败】 步骤名："+step.getName()+"检查点 : "+CheckArrStr );
              step.setResult(false);
          }else{
        	  step.setCheckList("【Pass 校验成功】 步骤名："+step.getName()+"检查点 : "+CheckArrStr);
          }
        }
        return  null;
    }


}
