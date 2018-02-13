package com.api.autotest.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.api.autotest.model.ApiVO;
import com.api.autotest.model.Parameters;

public class GetResponse {
	
	public String GetResponse(ApiVO apivo){
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
	}

}
