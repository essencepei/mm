package com.pjh.model;

import java.util.List;

public class GridView {
	private List<?> rows;
	private long total;
	
	public GridView(List<?> rows,Object total){
		this.rows = rows;
		if(null!=total){
			this.total = Long.valueOf(total.toString());
		}
		
	}
	
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	
	
}
