package com.api.autotest.model;

public class parameters {
	private int id;
	private int api_id;
	private String parameter;
	private String isrequired;
	private String parametertype;
	private String datatype;
	private String description;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getApi_id() {
		return api_id;
	}
	public void setApi_id(int api_id) {
		this.api_id = api_id;
	}
	public String getParameter() {
		return parameter;
	}
	public void setParameter(String parameter) {
		this.parameter = parameter;
	}
	public String getIsrequired() {
		return isrequired;
	}
	public void setIsrequired(String isrequired) {
		this.isrequired = isrequired;
	}
	public String getParametertype() {
		return parametertype;
	}
	public void setParametertype(String parametertype) {
		this.parametertype = parametertype;
	}
	public String getDatatype() {
		return datatype;
	}
	public void setDatatype(String datatype) {
		this.datatype = datatype;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
