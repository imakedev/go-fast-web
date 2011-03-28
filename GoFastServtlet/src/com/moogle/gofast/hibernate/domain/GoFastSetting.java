package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * The persistent class for the GO_FAST_SETTING database table.
 * 
 */
@Entity
@Table(name="GO_FAST_SETTING")
public class GoFastSetting implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GFS_ID")
	private Integer gfsId;

	@Column(name="GFS_NAME")
	private String gfsName;

	//bi-directional many-to-one association to GoFastSettingCate
    @ManyToOne
	@JoinColumn(name="GFSC_ID")
	private GoFastSettingCate goFastSettingCate;

	 

    public GoFastSetting() {
    }

	public Integer getGfsId() {
		return this.gfsId;
	}

	public void setGfsId(Integer gfsId) {
		this.gfsId = gfsId;
	}

	public String getGfsName() {
		return this.gfsName;
	}

	public void setGfsName(String gfsName) {
		this.gfsName = gfsName;
	}

	public GoFastSettingCate getGoFastSettingCate() {
		return this.goFastSettingCate;
	}

	public void setGoFastSettingCate(GoFastSettingCate goFastSettingCate) {
		this.goFastSettingCate = goFastSettingCate;
	}
	
	 
	
}