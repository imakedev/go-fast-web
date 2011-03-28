package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * The persistent class for the GO_FAST_SETTING_CATE database table.
 * 
 */
@Entity
@Table(name="GO_FAST_SETTING_CATE")
public class GoFastSettingCate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GFSC_ID")
	private Integer gfscId;

	@Column(name="GFSC_NAME")
	private String gfscName;
 

    public GoFastSettingCate() {
    }

	public Integer getGfscId() {
		return this.gfscId;
	}

	public void setGfscId(Integer gfscId) {
		this.gfscId = gfscId;
	}

	public String getGfscName() {
		return this.gfscName;
	}

	public void setGfscName(String gfscName) {
		this.gfscName = gfscName;
	}

	 
	
}