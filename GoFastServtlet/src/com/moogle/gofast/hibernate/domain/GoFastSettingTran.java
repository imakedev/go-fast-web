package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;


/**
 * The persistent class for the GO_FAST_SETTING_TRANS database table.
 * 
 */
@Entity
@Table(name="GO_FAST_SETTING_TRANS")
public class GoFastSettingTran implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private GoFastSettingTranPK id;

    public GoFastSettingTran() {
    }

	public GoFastSettingTranPK getId() {
		return id;
	}

	public void setId(GoFastSettingTranPK id) {
		this.id = id;
	}
    
}