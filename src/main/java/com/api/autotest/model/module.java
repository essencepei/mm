package com.api.autotest.model;

public class module {
	private Integer id;
	private Integer suite_id;
	private String modelname;
	
	public module() {
		super();
		// TODO Auto-generated constructor stub
	}
	public module(Integer id, Integer suite_id, String modelname) {
		super();
		this.id = id;
		this.suite_id = suite_id;
		this.modelname = modelname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getSuite_id() {
		return suite_id;
	}
	public void setSuite_id(Integer suite_id) {
		this.suite_id = suite_id;
	}
	public String getModelname() {
		return modelname;
	}
	public void setModelname(String modelname) {
		this.modelname = modelname;
	}
	
	
}
