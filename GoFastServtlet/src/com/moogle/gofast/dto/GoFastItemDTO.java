package com.moogle.gofast.dto;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.moogle.gofast.hibernate.domain.GoFastArea;
import com.moogle.gofast.hibernate.domain.GoFastCate;
import com.moogle.gofast.hibernate.domain.GoFastCustomer;
import com.moogle.gofast.hibernate.domain.GoFastItemImage;

public class GoFastItemDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 
	private Integer gfiId;
	private String gfiDetail;
	private String gfiDiscount;
	private String gfiName;
	private String gfiStatus;
	private Integer gfiPriority;
	private GoFastCustomer goFastCustomer;
	private GoFastCate goFastCate;
	private GoFastArea goFastArea;
	private List<GoFastItemImage> goFastItemImages;
	public Integer getGfiId() {
		return gfiId;
	}
	public void setGfiId(Integer gfiId) {
		this.gfiId = gfiId;
	}
	public String getGfiDetail() {
		return gfiDetail;
	}
	public void setGfiDetail(String gfiDetail) {
		this.gfiDetail = gfiDetail;
	}
	public String getGfiDiscount() {
		return gfiDiscount;
	}
	public void setGfiDiscount(String gfiDiscount) {
		this.gfiDiscount = gfiDiscount;
	}
	public String getGfiName() {
		return gfiName;
	}
	public void setGfiName(String gfiName) {
		this.gfiName = gfiName;
	}
	public String getGfiStatus() {
		return gfiStatus;
	}
	public void setGfiStatus(String gfiStatus) {
		this.gfiStatus = gfiStatus;
	}
	public Integer getGfiPriority() {
		return gfiPriority;
	}
	public void setGfiPriority(Integer gfiPriority) {
		this.gfiPriority = gfiPriority;
	}
	public GoFastCustomer getGoFastCustomer() {
		return goFastCustomer;
	}
	public void setGoFastCustomer(GoFastCustomer goFastCustomer) {
		this.goFastCustomer = goFastCustomer;
	}
	public GoFastCate getGoFastCate() {
		return goFastCate;
	}
	public void setGoFastCate(GoFastCate goFastCate) {
		this.goFastCate = goFastCate;
	}
	public GoFastArea getGoFastArea() {
		return goFastArea;
	}
	public void setGoFastArea(GoFastArea goFastArea) {
		this.goFastArea = goFastArea;
	}
	public List<GoFastItemImage> getGoFastItemImages() {
		return goFastItemImages;
	}
	public void setGoFastItemImages(List<GoFastItemImage> goFastItemImages) {
		this.goFastItemImages = goFastItemImages;
	}
	
	
}
