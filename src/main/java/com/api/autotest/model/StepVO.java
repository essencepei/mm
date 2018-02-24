package com.api.autotest.model;

import java.util.ArrayList;

public class StepVO {
	private Integer id;
	private Suite suite;
	private Module module;
	private ApiVO apivo;
	private String response;
	private String transfer;
	private String CheckStr;
	private Boolean result=true;
	private String name;
	private ArrayList<String> checkList=new ArrayList();
	
	public Suite getSuite() {
		return suite;
	}
	public void setSuite(Suite suite) {
		this.suite = suite;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public ApiVO getApivo() {
		return apivo;
	}
	public void setApivo(ApiVO apivo) {
		this.apivo = apivo;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public String getTransfer() {
		return transfer;
	}
	public void setTransfer(String transfer) {
		this.transfer = transfer;
	}
	public String getCheckStr() {
		return CheckStr;
	}
	public void setCheckStr(String checkStr) {
		CheckStr = checkStr;
	}
	public Boolean getResult() {
		return result;
	}
	public void setResult(Boolean result) {
		this.result = result;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<String> getCheckList() {
		return checkList;
	}

    public void setCheckList(String checkStr) {
        this.checkList.add(checkStr);
    }

}
