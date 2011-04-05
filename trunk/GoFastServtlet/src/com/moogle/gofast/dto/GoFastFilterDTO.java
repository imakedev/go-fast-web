package com.moogle.gofast.dto;

import java.io.Serializable;

import com.moogle.gofast.hibernate.domain.GoFastSetting;

public class GoFastFilterDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 
	private Integer gfstId; 
	private String gfstKey; 
	private GoFastSetting goFastSetting;
	public Integer getGfstId() {
		return gfstId;
	}
	public void setGfstId(Integer gfstId) {
		this.gfstId = gfstId;
	}
	public String getGfstKey() {
		return gfstKey;
	}
	public void setGfstKey(String gfstKey) {
		this.gfstKey = gfstKey;
	}
	public GoFastSetting getGoFastSetting() {
		return goFastSetting;
	}
	public void setGoFastSetting(GoFastSetting goFastSetting) {
		this.goFastSetting = goFastSetting;
	}
	
	
}
