package com.api.autotest.model;

public class parameters {
	private Integer id;
	private Integer api_id;
	private String parameter;
	private String isrequired;
	private String parametertype;
	private String datatype;
	private String description;
	
	public parameters() {
		super();
		// TODO Auto-generated constructor stub
	}
	public parameters(Integer id, Integer api_id, String parameter, String isrequired, String parametertype,
			String datatype, String description) {
		super();
		this.id = id;
		this.api_id = api_id;
		this.parameter = parameter;
		this.isrequired = isrequired;
		this.parametertype = parametertype;
		this.datatype = datatype;
		this.description = description;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getApi_id() {
		return api_id;
	}
	public void setApi_id(Integer api_id) {
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
