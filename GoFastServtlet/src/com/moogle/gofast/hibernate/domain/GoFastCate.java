package com.moogle.gofast.hibernate.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * The persistent class for the GO_FAST_CATE database table.
 * 
 */
@Entity
@Table(name="GO_FAST_CATE")
public class GoFastCate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="GFCA_ID")
	private Integer gfcaId;

	@Column(name="GFCA_DETAIL")
	private String gfcaDetail;

	@Column(name="GFCA_ICON_NAME")
	private String gfcaIconName;

	@Column(name="GFCA_ICON_PATH")
	private String gfcaIconPath;

	@Column(name="GFCA_LEVEL")
	private Integer gfcaLevel;

	@Column(name="GFCA_NAME")
	private String gfcaName;

	@Column(name="GFCA_PARENT")
	private Integer gfcaParent;
 

    public GoFastCate() {
    }

	public Integer getGfcaId() {
		return this.gfcaId;
	}

	public void setGfcaId(Integer gfcaId) {
		this.gfcaId = gfcaId;
	}

	public String getGfcaDetail() {
		return this.gfcaDetail;
	}

	public void setGfcaDetail(String gfcaDetail) {
		this.gfcaDetail = gfcaDetail;
	}

	public String getGfcaIconName() {
		return this.gfcaIconName;
	}

	public void setGfcaIconName(String gfcaIconName) {
		this.gfcaIconName = gfcaIconName;
	}

	public String getGfcaIconPath() {
		return this.gfcaIconPath;
	}

	public void setGfcaIconPath(String gfcaIconPath) {
		this.gfcaIconPath = gfcaIconPath;
	}

	public Integer getGfcaLevel() {
		return this.gfcaLevel;
	}

	public void setGfcaLevel(Integer gfcaLevel) {
		this.gfcaLevel = gfcaLevel;
	}

	public String getGfcaName() {
		return this.gfcaName;
	}

	public void setGfcaName(String gfcaName) {
		this.gfcaName = gfcaName;
	}

	public Integer getGfcaParent() {
		return this.gfcaParent;
	}

	public void setGfcaParent(Integer gfcaParent) {
		this.gfcaParent = gfcaParent;
	}
 
	
}