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
 * The persistent class for the GO_FAST_ITEM_IMAGE database table.
 * 
 */
@Entity
@Table(name="GO_FAST_ITEM_IMAGE")
public class GoFastItemImage implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GFII_ID")
	private Integer gfiiId;

	@Column(name="GFII_NAME")
	private String gfiiName;

	@Column(name="GFII_PATH")
	private String gfiiPath;

	@Column(name="GFII_TYPE")
	private String gfiiType;

	//bi-directional many-to-one association to GoFastItem
    @ManyToOne
	@JoinColumn(name="GFI_ID")
	private GoFastItem goFastItem;

    public GoFastItemImage() {
    }

	public Integer getGfiiId() {
		return this.gfiiId;
	}

	public void setGfiiId(Integer gfiiId) {
		this.gfiiId = gfiiId;
	}

	public String getGfiiName() {
		return this.gfiiName;
	}

	public void setGfiiName(String gfiiName) {
		this.gfiiName = gfiiName;
	}

	public String getGfiiPath() {
		return this.gfiiPath;
	}

	public void setGfiiPath(String gfiiPath) {
		this.gfiiPath = gfiiPath;
	}

	public String getGfiiType() {
		return this.gfiiType;
	}

	public void setGfiiType(String gfiiType) {
		this.gfiiType = gfiiType;
	}

	public GoFastItem getGoFastItem() {
		return this.goFastItem;
	}

	public void setGoFastItem(GoFastItem goFastItem) {
		this.goFastItem = goFastItem;
	}
	
}