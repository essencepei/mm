package com.api.autotest.model;

public class apiVO {
	private Integer id;
	private Integer module_id;
	private String method; //post、get、delete
	private String path;
	
	public apiVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public apiVO(Integer id, Integer module_id, String method, String path) {
		super();
		this.id = id;
		this.module_id = module_id;
		this.method = method;
		this.path = path;
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
