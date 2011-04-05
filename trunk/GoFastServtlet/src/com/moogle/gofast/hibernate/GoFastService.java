package com.moogle.gofast.hibernate;


import java.util.List;

import com.moogle.gofast.dto.GoFastFilterDTO;
import com.moogle.gofast.dto.GoFastItemDTO;
import com.moogle.gofast.dto.SearchCriteria;
import com.moogle.gofast.hibernate.domain.GoFastArea;
import com.moogle.gofast.hibernate.domain.GoFastCate;
import com.moogle.gofast.hibernate.domain.GoFastCustomer;
import com.moogle.gofast.hibernate.domain.GoFastItem;
import com.moogle.gofast.hibernate.domain.GoFastLocation;
import com.moogle.gofast.utils.Paging;

public interface GoFastService {
	//List Catalogues
	public List listCatalogues(Paging paging);

	//List Items
	public List listItems(Integer cateId, SearchCriteria criteria,Paging paging);
	
	//Get Items
	public GoFastItemDTO getItems(Integer itemId);
	
	// List Filter
	public List<GoFastFilterDTO> getFilter(String key);
	
	//Set Filter
	public void setFilter(String key,Integer settingId,String settingValue);
	
	// GO_FAST_LOCATION
	public GoFastLocation findGoFastLocationById(Integer gflId);
	public int updateGoFastLocation(GoFastLocation goFastLocation);
	public Integer saveGoFastLocation(GoFastLocation transientInstance);
	public void deleteGoFastLocation(GoFastLocation persistentInstance);
	public List searchGoFastLocation(GoFastLocation persistentInstance,Paging paging);
	
	// GO_FAST_CATE
	public GoFastCate findGoFastCatById(Integer gfcaId);
	public int updateGoFastCat(GoFastCate goFastCate);
	public Integer saveGoFastCat(GoFastCate transientInstance);
	public void deleteGoFastCat(GoFastCate persistentInstance);
	public List searchGoFastCat(GoFastCate persistentInstance,Paging paging);
	
	// GO_FAST_AREA
	public GoFastArea findGoFastAreaById(Integer gfaId);
	public int updateGoFastArea(GoFastArea goFastArea);
	public Integer saveGoFastArea(GoFastArea transientInstance);
	public void deleteGoFastArea(GoFastArea persistentInstance);
	public List searchGoFastArea(GoFastArea persistentInstance,Paging paging);
	
	// GO_FAST_CUSTOMER
	public GoFastCustomer findGoFastCustomerById(Integer gfaId);
	public int updateGoFastCustomer(GoFastCustomer goFastCustomer);
	public Integer saveGoFastCustomer(GoFastCustomer transientInstance);
	public void deleteGoFastCustomer(GoFastCustomer persistentInstance);
	public List searchGoFastCustomer(GoFastCustomer persistentInstance,Paging paging);
	
	// GO_FAST_ITEM
	public GoFastItem findGoFastItemById(Integer gfaId);
	public int updateGoFastItem(GoFastItem goFastItem);
	public Integer saveGoFastItem(GoFastItem transientInstance);
	public void deleteGoFastItem(GoFastItem persistentInstance);
	public List searchGoFastItem(GoFastItem persistentInstance,Paging paging);
}
