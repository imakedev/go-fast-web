package com.moogle.gofast.ajax;

import java.util.List;

import javax.servlet.ServletContext;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.moogle.gofast.dto.GoFastFilterDTO;
import com.moogle.gofast.dto.GoFastItemDTO;
import com.moogle.gofast.dto.SearchCriteria;
import com.moogle.gofast.hibernate.GoFastService;
import com.moogle.gofast.hibernate.domain.GoFastSettingCate;
import com.moogle.gofast.utils.Paging;

public class GoFastAjax {
	private GoFastService goFastService;
	public GoFastAjax(){
		WebContext ctx = WebContextFactory.get(); 
		ServletContext servletContext = ctx.getServletContext();
    	WebApplicationContext wac = WebApplicationContextUtils.
    	getRequiredWebApplicationContext(servletContext);
    	goFastService = (GoFastService)wac.getBean("goFastService");
	}
	public String callTest(){
		return "Test Ok ";
	}
	public List listCatalogues(Paging paging){ 
    	List list =goFastService.listCatalogues(paging);
    	return list;
	}

	//List Items
	public List listItems(Integer cateId, SearchCriteria criteria,Paging paging){
		List list = goFastService.listItems(cateId,criteria,paging);
		return list;
	}
	
	//Get Items
	public GoFastItemDTO getItems(Integer itemId){
		return goFastService.getItems(itemId);
	}
	// List SettingCatalogues
	public List<GoFastSettingCate> getSettingCatalogues(){		
		return goFastService.getSettingCatalogues();
	}
	
	// List Filter
	public List getFilter(String key,Integer cateId){		
		return goFastService.getFilter(key,cateId);
	}
	
	//Set Filter
	public void setFilter(String key,Integer settingId,String settingValue){
		goFastService.setFilter(key,settingId,settingValue);
	}
	
	public int clearCateSetting(String key,Integer cateId){
		return goFastService.clearCateSetting(key,cateId);
	}
	
}
