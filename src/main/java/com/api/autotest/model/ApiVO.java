package com.api.autotest.model;

import java.util.List;

public class ApiVO {
	private Integer id;
	private Integer module_id;
	private String method; //post、get、delete
	private String path;
	private List<Parameters> paramlist;
	
	public List<Parameters> getParamlist() {
		return paramlist;
	}

	public void setParamlist(List<Parameters> paramlist) {
		this.paramlist = paramlist;
	}

	public ApiVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ApiVO(Integer id, Integer module_id, String method, String path, List<Parameters> paramlist) {
		super();
		this.id = id;
		this.module_id = module_id;
		this.method = method;
		this.path = path;
		this.paramlist = paramlist;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getModule_id() {
		return module_id;
	}
	public void setModule_id(Integer module_id) {
		this.module_id = module_id;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	

}
