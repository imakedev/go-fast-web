package com.moogle.gofast.dto;

import java.io.Serializable;

public class SearchCriteria implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String key;
	private Long lat_vale;
	private Long long_value;
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public Long getLat_vale() {
		return lat_vale;
	}
	public void setLat_vale(Long lat_vale) {
		this.lat_vale = lat_vale;
	}
	public Long getLong_value() {
		return long_value;
	}
	public void setLong_value(Long long_value) {
		this.long_value = long_value;
	}
	
	
}
