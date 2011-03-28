package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * The persistent class for the GO_FAST_SETTING_TRANS database table.
 * 
 */
@Entity
@Table(name="GO_FAST_SETTING_TRANS")
public class GoFastSettingTran implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GFST_ID")
	private Integer gfstId;

	@Column(name="GFST_KEY")
	private String gfstKey;

	//bi-directional many-to-one association to GoFastSetting
    @ManyToOne
	@JoinColumn(name="GFS_ID")
	private GoFastSetting goFastSetting;

    public GoFastSettingTran() {
    }

	public Integer getGfstId() {
		return this.gfstId;
	}

	public void setGfstId(Integer gfstId) {
		this.gfstId = gfstId;
	}

	public String getGfstKey() {
		return this.gfstKey;
	}

	public void setGfstKey(String gfstKey) {
		this.gfstKey = gfstKey;
	}

	public GoFastSetting getGoFastSetting() {
		return this.goFastSetting;
	}

	public void setGoFastSetting(GoFastSetting goFastSetting) {
		this.goFastSetting = goFastSetting;
	}
	
}