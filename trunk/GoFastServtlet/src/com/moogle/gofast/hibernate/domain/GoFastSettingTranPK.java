package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Embeddable
public class GoFastSettingTranPK implements Serializable {
    //default serial version id, required for serializable classes.
    private static final long serialVersionUID = 1L;

    @Column(name="GFST_KEY")
	private String gfstKey;

	//bi-directional many-to-one association to GoFastSetting
    @ManyToOne
	@JoinColumn(name="GFS_ID")
	private GoFastSetting goFastSetting;

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
