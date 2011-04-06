package com.moogle.gofast.hibernate.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moogle.gofast.dto.GoFastFilterDTO;
import com.moogle.gofast.dto.GoFastItemDTO;
import com.moogle.gofast.dto.SearchCriteria;
import com.moogle.gofast.hibernate.GoFastService;
import com.moogle.gofast.hibernate.domain.GoFastArea;
import com.moogle.gofast.hibernate.domain.GoFastCate;
import com.moogle.gofast.hibernate.domain.GoFastCustomer;
import com.moogle.gofast.hibernate.domain.GoFastItem;
import com.moogle.gofast.hibernate.domain.GoFastItemImage;
import com.moogle.gofast.hibernate.domain.GoFastLocation;
import com.moogle.gofast.hibernate.domain.GoFastSetting;
import com.moogle.gofast.hibernate.domain.GoFastSettingCate;
import com.moogle.gofast.hibernate.domain.GoFastSettingTran;
import com.moogle.gofast.hibernate.domain.GoFastSettingTranPK;
import com.moogle.gofast.utils.Paging;
 
 
 
@Repository
@Transactional
public class HibernateGoFast   implements  GoFastService{
	
	private SessionFactory sessionAnnotationFactory;
	public SessionFactory getSessionAnnotationFactory() {
		return sessionAnnotationFactory;
	}
	public void setSessionAnnotationFactory(SessionFactory sessionAnnotationFactory) {
		this.sessionAnnotationFactory = sessionAnnotationFactory;
	}
	/*
	 * FoodBill.java
FoodMenu.java
FoodOrder.java
	 */
	@Transactional(readOnly = true)
	public GoFastLocation findGoFastLocationById(Integer gflId) throws DataAccessException {
		// TODO Auto-generated method stub
		GoFastLocation goFastLocation = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("com.moogle.gofast.hibernate.domain.GoFastLocation", gflId);
			if(obj!=null)
				goFastLocation = (GoFastLocation)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return goFastLocation;		 
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
		public int updateGoFastLocation(GoFastLocation transientInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			 Session  session = sessionAnnotationFactory.getCurrentSession();
			 int canUpdate = 0;
				try{
					session.update(transientInstance);
					canUpdate =1;
					}catch (Exception e) {
						// TODO: handle exception
					} finally {
						if (session != null) {
							session = null;
						} 
					}
					return canUpdate;
		}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveGoFastLocation(GoFastLocation transientInstance) throws DataAccessException {
			// TODO Auto-generated method stub
			
			Session  session = sessionAnnotationFactory.getCurrentSession();
			Integer returnId  = null;
			try{
				Object obj = session.save(transientInstance);
			
				if(obj!=null){
					returnId =(Integer) obj;
				}
				} finally {
					if (session != null) {
						session = null;
					} 
				}
			return returnId;	
		}
	 
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	 public void deleteGoFastLocation(GoFastLocation persistentInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			Session  session = sessionAnnotationFactory.getCurrentSession();
			try{
				session.delete(persistentInstance);
				}finally {
					if (session != null) {
						session = null;
					} 
				}
		}
/*	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteFoodMenu(FoodMenu persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteFoodOrder(FoodOrder persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	
	
	
	@Transactional(readOnly = true)
	public FoodMenu findFoodMenuById(Integer fmId) throws DataAccessException {
		// TODO Auto-generated method stub
		FoodMenu foodMenu = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodMenu", fmId);
			if(obj!=null)
				foodMenu = (FoodMenu)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return foodMenu;		 
	}
	
	@Transactional(readOnly = true)
	public FoodOrder findFoodOrderById(Integer foId) throws DataAccessException {
		// TODO Auto-generated method stub
		FoodOrder foodOrder = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodOrder", foId);
			if(obj!=null)
				foodOrder = (FoodOrder)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return foodOrder;		 
	}
	
	 
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodBill(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodMenu(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodOrder(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	@Transactional(readOnly=true)
	public List searchFoodBill(FoodBill instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodMenu"); 
			
			Integer fbId = instance.getFbId();
		//	FoodOrder foodOrder = instance.ggetFoodOrder();
			
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fbId !=null && fbId.intValue()!=0){  
				  criteria.add(Expression.eq("fbId",  fbId));
				  iscriteria = true;
			 } 
			 
				//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	 
	@Transactional(readOnly=true)
	public List searchFoodMenu(FoodMenu instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodMenu"); 
			
			Integer fmId = instance.getFmId();
			String fmName = instance.getFmName();
			String fmDetail = instance.getFmDetail();
			
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fmId !=null && fmId.intValue()!=0){  
				  criteria.add(Expression.eq("fmId",  fmId));
				  iscriteria = true;
			 } 
			 
			if(fmName !=null && !"".equals(fmName) && !" ".equals(fmName)){ 
				 criteria.add(Expression.eq("fmName", fmName));	
				iscriteria = true;
			} 
			if(fmDetail !=null && !"".equals(fmDetail) && !" ".equals(fmDetail)){ 
				 criteria.add(Expression.eq("fmDetail", fmDetail));	
				iscriteria = true;
			} 	
			//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	@Transactional(readOnly=true)
	public List searchFoodOrder(FoodOrder instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodOrder"); 
			
			Integer fbId = instance.getFoId();
			FoodBill foodBill = instance.getFoodBill();
			FoodMenu foodMenu = instance.getFoodMenu();
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fbId !=null && fbId.intValue()!=0){  
				  criteria.add(Expression.eq("fbId",  fbId));
				  iscriteria = true;
			 } 
			 
			if(foodBill !=null && !"".equals(foodBill) && !" ".equals(foodBill)){ 
				 criteria.add(Expression.eq("foodBill", foodBill));	
				iscriteria = true;
			} 
			if(foodMenu !=null && !"".equals(foodMenu) && !" ".equals(foodMenu)){ 
				 criteria.add(Expression.eq("foodMenu", foodMenu));	
				iscriteria = true;
			} 	
			//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateFoodBill(FoodBill transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(transientInstance);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
		public int updateFoodMenu(FoodMenu transientInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			 Session  session = sessionAnnotationFactory.getCurrentSession();
			 int canUpdate = 0;
				try{
					session.update(transientInstance);
					canUpdate =1;
					}catch (Exception e) {
						// TODO: handle exception
					} finally {
						if (session != null) {
							session = null;
						} 
					}
					return canUpdate;
		}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
		public int updateFoodOrder(FoodOrder transientInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			 Session  session = sessionAnnotationFactory.getCurrentSession();
			 int canUpdate = 0;
				try{
					session.update(transientInstance);
					canUpdate =1;
					}catch (Exception e) {
						// TODO: handle exception
					} finally {
						if (session != null) {
							session = null;
						} 
					}
					return canUpdate;
		} */
	
	@Transactional(readOnly = true)
	public List searchGoFastLocation(GoFastLocation persistentInstance,Paging paging) {
		// TODO Auto-generated method stub		 
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Criteria criteria = (Criteria) session
					.createCriteria(persistentInstance.getClass());
			Integer gflId = persistentInstance.getGflId();
			String gflDetail =persistentInstance.getGflDetail(); 
			String gflName  =persistentInstance.getGflName();
			if (gflId!=null && gflId.intValue() != 0) {
				criteria.add(Expression.eq("gflId", gflId));				
			}
			if (gflDetail!=null && gflDetail.length()>0) {
				criteria.add(Expression.eq("gflDetail", gflDetail));				
			}
			if (gflName!=null && gflName.length()>0) {
				criteria.add(Expression.eq("gflName", gflName));				
			} 

		/*	if(idObj!=null && !idObj.toString().equals("")
					&& !idObj.toString().equals(" "))*/
			//criteria.addOrder(Order.asc(idObj.toString()));
			// sortby = asc or desc
			if(paging.getOrderBy()!=null && paging.getOrderBy().length()>0 
					&& paging.getSortBy()!=null && paging.getSortBy().length()>0){
					if(paging.getSortBy().equalsIgnoreCase("desc"))
						criteria.addOrder(Order.desc(paging.getOrderBy()));
					else
						criteria.addOrder(Order.asc(paging.getOrderBy()));
			}else
				criteria.addOrder(Order.asc("gflId"));
			// set pagging.
			String size = String.valueOf(getGoFastLocationSize(session,persistentInstance));
		 
			 criteria.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			 criteria.setMaxResults(paging.getPageSize()); 
			List l = criteria.list(); 
			transList.add(l); 
			transList.add(size); 
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	
	
	}
	
	@Transactional(readOnly = true)
	public GoFastCate findGoFastCateById(Integer gfcaId) {
		// TODO Auto-generated method stub
		GoFastCate goFastCate = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("com.moogle.gofast.hibernate.domain.GoFastCate", gfcaId);
			if(obj!=null)
				goFastCate = (GoFastCate)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return goFastCate;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateGoFastCate(GoFastCate goFastCate) {
		// TODO Auto-generated method stub
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(goFastCate);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveGoFastCate(GoFastCate transientInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteGoFastCate(GoFastCate persistentInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	
	@Transactional(readOnly = true)
	public List searchGoFastCate(GoFastCate persistentInstance,Paging paging){
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Criteria criteria = (Criteria) session
					.createCriteria(persistentInstance.getClass());
			Integer gfcaId = persistentInstance.getGfcaId();
			String gfcaDetail = persistentInstance.getGfcaDetail();
			String gfcaIconName  = persistentInstance.getGfcaIconName();
			String gfcaIconPath  = persistentInstance.getGfcaIconPath();
			 
			if (gfcaId!=null && gfcaId.intValue() != 0) {
				criteria.add(Expression.eq("gfcaId", gfcaId));				
			}
			if (gfcaDetail!=null && gfcaDetail.length()>0) {
				criteria.add(Expression.eq("gfcaDetail", gfcaDetail));				
			}
			if (gfcaIconName!=null && gfcaIconName.length()>0) {
				criteria.add(Expression.eq("gfcaIconName", gfcaIconName));				
			}
			if (gfcaIconPath!=null && gfcaIconPath.length()>0) {
				criteria.add(Expression.eq("gfcaIconPath", gfcaIconPath));				
			}
			
		/*	if(idObj!=null && !idObj.toString().equals("")
					&& !idObj.toString().equals(" "))*/
			//criteria.addOrder(Order.asc(idObj.toString()));
			// sortby = asc or desc
			if(paging.getOrderBy()!=null && paging.getOrderBy().length()>0 
					&& paging.getSortBy()!=null && paging.getSortBy().length()>0){
					if(paging.getSortBy().equalsIgnoreCase("desc"))
						criteria.addOrder(Order.desc(paging.getOrderBy()));
					else
						criteria.addOrder(Order.asc(paging.getOrderBy()));
			}else
				criteria.addOrder(Order.asc("gfcaId"));
			// set pagging.
			String size = String.valueOf(getGoFastCateSize(session, persistentInstance));
		 
			 criteria.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			 criteria.setMaxResults(paging.getPageSize()); 
			List l = criteria.list(); 
			transList.add(l); 
			transList.add(size); 
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	
	
	}
	
	@Transactional(readOnly = true)
	public GoFastArea findGoFastAreaById(Integer gfaId) {
		// TODO Auto-generated method stub
		GoFastArea goFastArea = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("com.moogle.gofast.hibernate.domain.GoFastArea", gfaId);
			if(obj!=null)
				goFastArea = (GoFastArea)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return goFastArea;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateGoFastArea(GoFastArea goFastArea) {
		// TODO Auto-generated method stub
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(goFastArea);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveGoFastArea(GoFastArea transientInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteGoFastArea(GoFastArea persistentInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	
	@Transactional(readOnly = true)
	public List searchGoFastArea(GoFastArea persistentInstance,Paging paging){
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Criteria criteria = (Criteria) session
					.createCriteria(persistentInstance.getClass());
			Integer gfaId  = persistentInstance.getGfaId();
			String gfaDetail =persistentInstance.getGfaDetail();
			String gfaName =persistentInstance.getGfaName();
			if (gfaId!=null && gfaId.intValue() != 0) {
				criteria.add(Expression.eq("gfaId", gfaId));				
			}
			if (gfaDetail!=null && gfaDetail.length()>0) {
				criteria.add(Expression.eq("gfaDetail", gfaDetail));				
			}
			if (gfaName!=null && gfaName.length()>0) {
				criteria.add(Expression.eq("gfaName", gfaName));				
			} 

		/*	if(idObj!=null && !idObj.toString().equals("")
					&& !idObj.toString().equals(" "))*/
			//criteria.addOrder(Order.asc(idObj.toString()));
			// sortby = asc or desc
			if(paging.getOrderBy()!=null && paging.getOrderBy().length()>0 
					&& paging.getSortBy()!=null && paging.getSortBy().length()>0){
					if(paging.getSortBy().equalsIgnoreCase("desc"))
						criteria.addOrder(Order.desc(paging.getOrderBy()));
					else
						criteria.addOrder(Order.asc(paging.getOrderBy()));
			}else
				criteria.addOrder(Order.asc("gfaId"));
			// set pagging.
			String size = String.valueOf(getGoFastAreaSize(session,persistentInstance));
		 
			 criteria.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			 criteria.setMaxResults(paging.getPageSize()); 
			List l = criteria.list(); 
			transList.add(l); 
			transList.add(size); 
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	
	
	}
	
	@Transactional(readOnly = true)
	public GoFastCustomer findGoFastCustomerById(Integer gfaId) {
		// TODO Auto-generated method stub
		GoFastCustomer goFastCustomer = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("com.moogle.gofast.hibernate.domain.GoFastCustomer", gfaId);
			if(obj!=null)
				goFastCustomer = (GoFastCustomer)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return goFastCustomer;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateGoFastCustomer(GoFastCustomer goFastCustomer) {
		// TODO Auto-generated method stub
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(goFastCustomer);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveGoFastCustomer(GoFastCustomer transientInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteGoFastCustomer(GoFastCustomer persistentInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	
	@Transactional(readOnly = true)
	public List searchGoFastCustomer(GoFastCustomer persistentInstance,Paging paging){
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Criteria criteria = (Criteria) session
					.createCriteria(persistentInstance.getClass());
			Integer gfcId = persistentInstance.getGfcId();
			String gfcDetail =persistentInstance.getGfcDetail();
			String gfcEmail = persistentInstance.getGfcEmail();
			String gfcIconName =persistentInstance.getGfcIconName();
			String gfcIconPath =persistentInstance.getGfcIconPath();
			String gfcLat =persistentInstance.getGfcLat();
			String gfcLong =persistentInstance.getGfcLong();
			String gfcName =persistentInstance.getGfcName();
			String gfcPhone =persistentInstance.getGfcPhone();
			String gfcStatus =persistentInstance.getGfcStatus();
			if (gfcId!=null && gfcId.intValue() != 0) {
				criteria.add(Expression.eq("gfcId", gfcId));				
			}
			if (gfcDetail!=null && gfcDetail.length()>0) {
				criteria.add(Expression.eq("gfcDetail", gfcDetail));				
			}
			if (gfcEmail!=null && gfcEmail.length()>0) {
				criteria.add(Expression.eq("gfcEmail", gfcEmail));				
			}  
			if (gfcIconName!=null && gfcIconName.length()>0) {
				criteria.add(Expression.eq("gfcIconName", gfcIconName));				
			} 
			if (gfcIconPath!=null && gfcIconPath.length()>0) {
				criteria.add(Expression.eq("gfcIconPath", gfcIconPath));				
			} 
			if (gfcLat!=null && gfcLat.length()>0) {
				criteria.add(Expression.eq("gfcLat", gfcLat));				
			} 
			if (gfcLong!=null && gfcLong.length()>0) {
				criteria.add(Expression.eq("gfcLong", gfcLong));				
			} 
			if (gfcName!=null && gfcName.length()>0) {
				criteria.add(Expression.eq("gfcName", gfcName));				
			} 
			if (gfcPhone!=null && gfcPhone.length()>0) {
				criteria.add(Expression.eq("gfcPhone", gfcPhone));				
			} 
			if (gfcStatus!=null && gfcStatus.length()>0) {
				criteria.add(Expression.eq("gfcStatus", gfcStatus));				
			} 
		/*	if(idObj!=null && !idObj.toString().equals("")
					&& !idObj.toString().equals(" "))*/
			//criteria.addOrder(Order.asc(idObj.toString()));
			// sortby = asc or desc
			if(paging.getOrderBy()!=null && paging.getOrderBy().length()>0 
					&& paging.getSortBy()!=null && paging.getSortBy().length()>0){
					if(paging.getSortBy().equalsIgnoreCase("desc"))
						criteria.addOrder(Order.desc(paging.getOrderBy()));
					else
						criteria.addOrder(Order.asc(paging.getOrderBy()));
			}else
				criteria.addOrder(Order.asc("gfcId"));
			// set pagging.
			String size = String.valueOf(getGoFastCustomerSize(session,persistentInstance));
		 
			 criteria.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			 criteria.setMaxResults(paging.getPageSize()); 
			List l = criteria.list(); 
			transList.add(l); 
			transList.add(size); 
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	
	
	}
	
	@Transactional(readOnly = true)
	public GoFastItem findGoFastItemById(Integer gfiId) {
		// TODO Auto-generated method stub
		GoFastItem goFastItem = null;
		Object obj = null;
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("com.moogle.gofast.hibernate.domain.GoFastItem", gfiId);
			if(obj!=null)
				goFastItem = (GoFastItem)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return goFastItem;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateGoFastItem(GoFastItem goFastItem) {
		// TODO Auto-generated method stub
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(goFastItem);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveGoFastItem(GoFastItem transientInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteGoFastItem(GoFastItem persistentInstance) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	
	@Transactional(readOnly = true)
	public List searchGoFastItem(GoFastItem persistentInstance,Paging paging){
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Criteria criteria = (Criteria) session
					.createCriteria(persistentInstance.getClass());
			Integer gfiId =persistentInstance.getGfiId();
			String gfiDetail = persistentInstance.getGfiDetail();
			String gfiDiscount = persistentInstance.getGfiDiscount(); 
			String gfiName = persistentInstance.getGfiName();
			String gfiStatus = persistentInstance.getGfiStatus();
			GoFastCustomer goFastCustomer = persistentInstance.getGoFastCustomer();
			GoFastCate goFastCate = persistentInstance.getGoFastCate();
		//	GoFastLocation goFastLocation = persistentInstance.getGoFastLocation();
			GoFastArea goFastArea = persistentInstance.getGoFastArea();
			
			if (gfiId!=null && gfiId.intValue() != 0) {
				criteria.add(Expression.eq("gfiId", gfiId));				
			}
			if (gfiDetail!=null && gfiDetail.length()>0) {
				criteria.add(Expression.eq("gfiDetail", gfiDetail));				
			}
			if (gfiDiscount!=null && gfiDiscount.length()>0) {
				criteria.add(Expression.eq("gfiDiscount", gfiDiscount));				
			}  
			if (gfiName!=null && gfiName.length()>0) {
				criteria.add(Expression.eq("gfiName", gfiName));				
			}
			if (gfiStatus!=null && gfiStatus.length()>0) {
				criteria.add(Expression.eq("gfiStatus", gfiStatus));				
			}
			if (goFastCustomer!=null && goFastCustomer.getGfcId()!=null
					&& goFastCustomer.getGfcId().intValue()!=0) {
				criteria.add(Expression.eq("goFastCustomer", goFastCustomer));				
			} 
			if (goFastCate!=null&& goFastCate.getGfcaId()!=null
					&& goFastCate.getGfcaId().intValue()!=0) {
				criteria.add(Expression.eq("goFastCate", goFastCate));				
			}
			/*if (goFastLocation!=null && goFastLocation.getGflId()!=null
					&& goFastLocation.getGflId().intValue()!=0) {
				criteria.add(Expression.eq("goFastLocation", goFastLocation));				
			}*/
			if (goFastArea!=null && goFastArea.getGfaId()!=null
					&& goFastArea.getGfaId().intValue()!=0) {
				criteria.add(Expression.eq("goFastArea", goFastArea));				
			} 
		/*	if(idObj!=null && !idObj.toString().equals("")
					&& !idObj.toString().equals(" "))*/
			//criteria.addOrder(Order.asc(idObj.toString()));
			// sortby = asc or desc
			if(paging.getOrderBy()!=null && paging.getOrderBy().length()>0 
					&& paging.getSortBy()!=null && paging.getSortBy().length()>0){
					if(paging.getSortBy().equalsIgnoreCase("desc"))
						criteria.addOrder(Order.desc(paging.getOrderBy()));
					else
						criteria.addOrder(Order.asc(paging.getOrderBy()));
			}else
				criteria.addOrder(Order.asc("gflId"));
			// set pagging.
			String size = String.valueOf(getGoFastItemSize(session,persistentInstance));
		 
			 criteria.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			 criteria.setMaxResults(paging.getPageSize()); 
			List l = criteria.list(); 
			transList.add(l); 
			transList.add(size); 
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	
	
	}
	 
	private int getGoFastLocationSize(Session session,GoFastLocation persistentInstance) throws Exception {
 
		try { 
				Criteria criteria = (Criteria) session
						.createCriteria(persistentInstance.getClass());
				Integer gflId = persistentInstance.getGflId();
				String gflDetail =persistentInstance.getGflDetail(); 
				String gflName  =persistentInstance.getGflName();
				if (gflId!=null && gflId.intValue() != 0) {
					criteria.add(Expression.eq("gflId", gflId));
				}
				if (gflDetail!=null && gflDetail.length()>0) {
					criteria.add(Expression.eq("gflDetail", gflDetail));
				}
				if (gflName!=null && gflName.length()>0) {
					criteria.add(Expression.eq("gflName", gflName));
				} 
			 
			criteria.setProjection(Projections.rowCount());
			return ((Integer) criteria.list().get(0)).intValue();

		} catch (HibernateException re) {
			throw re;
		} catch (Exception e) {
			throw e;
		}
	
	}
	private int getGoFastAreaSize(Session session,GoFastArea persistentInstance) throws Exception {
		 
		try { 
				Criteria criteria = (Criteria) session
						.createCriteria(persistentInstance.getClass());
				Integer gfaId  = persistentInstance.getGfaId();
				String gfaDetail =persistentInstance.getGfaDetail();
				String gfaName =persistentInstance.getGfaName();
				if (gfaId!=null && gfaId.intValue() != 0) {
					criteria.add(Expression.eq("gfaId", gfaId));				
				}
				if (gfaDetail!=null && gfaDetail.length()>0) {
					criteria.add(Expression.eq("gfaDetail", gfaDetail));				
				}
				if (gfaName!=null && gfaName.length()>0) {
					criteria.add(Expression.eq("gfaName", gfaName));				
				} 
			criteria.setProjection(Projections.rowCount());
			return ((Integer) criteria.list().get(0)).intValue();

		} catch (HibernateException re) {
			throw re;
		} catch (Exception e) {
			throw e;
		}
	
	}
	private int getGoFastCateSize(Session session,GoFastCate persistentInstance) throws Exception {
		 
		try { 
				Criteria criteria = (Criteria) session
						.createCriteria(persistentInstance.getClass());
				Integer gfcaId = persistentInstance.getGfcaId();
				String gfcaDetail = persistentInstance.getGfcaDetail();
				String gfcaIconName  = persistentInstance.getGfcaIconName();
				String gfcaIconPath  = persistentInstance.getGfcaIconPath();
				 
				if (gfcaId!=null && gfcaId.intValue() != 0) {
					criteria.add(Expression.eq("gfcaId", gfcaId));				
				}
				if (gfcaDetail!=null && gfcaDetail.length()>0) {
					criteria.add(Expression.eq("gfcaDetail", gfcaDetail));				
				}
				if (gfcaIconName!=null && gfcaIconName.length()>0) {
					criteria.add(Expression.eq("gfcaIconName", gfcaIconName));				
				}
				if (gfcaIconPath!=null && gfcaIconPath.length()>0) {
					criteria.add(Expression.eq("gfcaIconPath", gfcaIconPath));				
				}
			 
			criteria.setProjection(Projections.rowCount());
			return ((Integer) criteria.list().get(0)).intValue();

		} catch (HibernateException re) {
			throw re;
		} catch (Exception e) {
			throw e;
		}
	
	}
	private int getGoFastCustomerSize(Session session,GoFastCustomer persistentInstance) throws Exception {
		 
		try { 
				Criteria criteria = (Criteria) session
						.createCriteria(persistentInstance.getClass());
				Integer gfcId = persistentInstance.getGfcId();
				String gfcDetail =persistentInstance.getGfcDetail();
				String gfcEmail = persistentInstance.getGfcEmail();
				String gfcIconName =persistentInstance.getGfcIconName();
				String gfcIconPath =persistentInstance.getGfcIconPath();
				String gfcLat =persistentInstance.getGfcLat();
				String gfcLong =persistentInstance.getGfcLong();
				String gfcName =persistentInstance.getGfcName();
				String gfcPhone =persistentInstance.getGfcPhone();
				String gfcStatus =persistentInstance.getGfcStatus();
				if (gfcId!=null && gfcId.intValue() != 0) {
					criteria.add(Expression.eq("gfcId", gfcId));				
				}
				if (gfcDetail!=null && gfcDetail.length()>0) {
					criteria.add(Expression.eq("gfcDetail", gfcDetail));				
				}
				if (gfcEmail!=null && gfcEmail.length()>0) {
					criteria.add(Expression.eq("gfcEmail", gfcEmail));				
				}  
				if (gfcIconName!=null && gfcIconName.length()>0) {
					criteria.add(Expression.eq("gfcIconName", gfcIconName));				
				} 
				if (gfcIconPath!=null && gfcIconPath.length()>0) {
					criteria.add(Expression.eq("gfcIconPath", gfcIconPath));				
				} 
				if (gfcLat!=null && gfcLat.length()>0) {
					criteria.add(Expression.eq("gfcLat", gfcLat));				
				} 
				if (gfcLong!=null && gfcLong.length()>0) {
					criteria.add(Expression.eq("gfcLong", gfcLong));				
				} 
				if (gfcName!=null && gfcName.length()>0) {
					criteria.add(Expression.eq("gfcName", gfcName));				
				} 
				if (gfcPhone!=null && gfcPhone.length()>0) {
					criteria.add(Expression.eq("gfcPhone", gfcPhone));				
				} 
				if (gfcStatus!=null && gfcStatus.length()>0) {
					criteria.add(Expression.eq("gfcStatus", gfcStatus));				
				} 
			 
			criteria.setProjection(Projections.rowCount());
			return ((Integer) criteria.list().get(0)).intValue();

		} catch (HibernateException re) {
			throw re;
		} catch (Exception e) {
			throw e;
		}
	
	}
	private int getGoFastItemSize(Session session,GoFastItem persistentInstance) throws Exception {
		 
		try { 
				Criteria criteria = (Criteria) session
						.createCriteria(persistentInstance.getClass());
				Integer gfiId =persistentInstance.getGfiId();
				String gfiDetail = persistentInstance.getGfiDetail();
				String gfiDiscount = persistentInstance.getGfiDiscount(); 
				String gfiName = persistentInstance.getGfiName();
				String gfiStatus = persistentInstance.getGfiStatus();
				GoFastCustomer goFastCustomer = persistentInstance.getGoFastCustomer();
				GoFastCate goFastCate = persistentInstance.getGoFastCate();
				//GoFastLocation goFastLocation = persistentInstance.getGoFastLocation();
				GoFastArea goFastArea = persistentInstance.getGoFastArea();
				
				if (gfiId!=null && gfiId.intValue() != 0) {
					criteria.add(Expression.eq("gfiId", gfiId));				
				}
				if (gfiDetail!=null && gfiDetail.length()>0) {
					criteria.add(Expression.eq("gfiDetail", gfiDetail));				
				}
				if (gfiDiscount!=null && gfiDiscount.length()>0) {
					criteria.add(Expression.eq("gfiDiscount", gfiDiscount));				
				}  
				if (gfiName!=null && gfiName.length()>0) {
					criteria.add(Expression.eq("gfiName", gfiName));				
				}
				if (gfiStatus!=null && gfiStatus.length()>0) {
					criteria.add(Expression.eq("gfiStatus", gfiStatus));				
				}
				if (goFastCustomer!=null && goFastCustomer.getGfcId()!=null
						&& goFastCustomer.getGfcId().intValue()!=0) {
					criteria.add(Expression.eq("goFastCustomer", goFastCustomer));				
				} 
				if (goFastCate!=null&& goFastCate.getGfcaId()!=null
						&& goFastCate.getGfcaId().intValue()!=0) {
					criteria.add(Expression.eq("goFastCate", goFastCate));				
				}
				/*if (goFastLocation!=null && goFastLocation.getGflId()!=null
						&& goFastLocation.getGflId().intValue()!=0) {
					criteria.add(Expression.eq("goFastLocation", goFastLocation));				
				}*/
				if (goFastArea!=null && goFastArea.getGfaId()!=null
						&& goFastArea.getGfaId().intValue()!=0) {
					criteria.add(Expression.eq("goFastArea", goFastArea));				
				} 
			 
			criteria.setProjection(Projections.rowCount());
			return ((Integer) criteria.list().get(0)).intValue();

		} catch (HibernateException re) {
			throw re;
		} catch (Exception e) {
			throw e;
		}
	
	}
	@Transactional(readOnly = true)
	public List listCatalogues(Paging paging) {
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Query query = session.createQuery("from GoFastCate cate ");			
			query.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			query.setMaxResults(paging.getPageSize());  
			transList.add(query.list());
			query = session.createQuery("select count(cate) from GoFastCate cate ");
			transList.add(query.uniqueResult());  
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	}
	
	@Transactional(readOnly = true)
	public List listItems(Integer cateId, SearchCriteria criteria, Paging paging) {
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			StringBuffer queryStr = new StringBuffer("from GoFastItem item ");
			StringBuffer queryCountStr = new StringBuffer("select count(item) from GoFastItem item ");
			boolean haveCateId =false;
			String condition="";
			if(cateId!=null){
				condition= " where item.goFastCustomer.gfcId =? ";
				haveCateId= true;
			}
			queryStr.append(condition);
			queryCountStr.append(condition);
			Query query = session.createQuery(queryStr.toString());			
			if(haveCateId){
				query.setParameter(0, cateId);
			}
			query.setFirstResult(paging.getPageSize() * (paging.getPageNo() - 1));
			query.setMaxResults(paging.getPageSize());
			List<GoFastItem> list = query.list();
			List<GoFastItemDTO> dtos =null;
			if(list!=null && list.size()>0){ 
				int size=list.size();
				dtos = new ArrayList<GoFastItemDTO>(size);
				for (GoFastItem item : list) {
					GoFastItemDTO dto =new GoFastItemDTO();
					dto.setGfiId(item.getGfiId());
					dto.setGfiName(item.getGfiName());
					dto.setGfiDetail(item.getGfiDetail());
					dto.setGfiDiscount(item.getGfiDiscount());
					dto.setGfiPriority(item.getGfiPriority());
					dto.setGfiStatus(item.getGfiStatus());
					dto.setGoFastArea(item.getGoFastArea());
					dto.setGoFastCustomer(item.getGoFastCustomer());
					dto.setGoFastCate(item.getGoFastCate());
					query = session.createQuery("from GoFastItemImage itemImage where itemImage.goFastItem.gfiId=?");
					query.setParameter(0, item.getGfiId());
					List<GoFastItemImage> itemImages = query.list();
					if(itemImages!=null && itemImages.size()>0)
						dto.setGoFastItemImages(itemImages);
					dtos.add(dto);
				}
			}
			transList.add(dtos);
			query = session.createQuery(queryCountStr.toString());
			if(haveCateId){
				query.setParameter(0, cateId);
			}
			transList.add(query.uniqueResult());  
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
			paging=null;
		}
		return null;
	}
	
	@Transactional(readOnly = true)
	public GoFastItemDTO getItems(Integer itemId) {
		// TODO Auto-generated method stub
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Query query = session.createQuery("from GoFastItem item where gfiId=?");
			query.setParameter(0, itemId);
			Object obj= query.uniqueResult();
			GoFastItem item=null;
			GoFastItemDTO dto = null;
		    if(obj!=null){
		    	item=(GoFastItem)obj;
		    	dto =new GoFastItemDTO();
		    	dto.setGfiId(item.getGfiId());
		    	dto.setGfiDetail(item.getGfiDetail());
		    	dto.setGfiDiscount(item.getGfiDiscount());
		    	dto.setGfiName(item.getGfiName());
		    	dto.setGfiStatus(item.getGfiStatus());
		    	dto.setGfiPriority(item.getGfiPriority());
		    	dto.setGoFastCustomer(item.getGoFastCustomer());
		    	dto.setGoFastCate(item.getGoFastCate());
		    	dto.setGoFastArea(item.getGoFastArea());
		    	query = session.createQuery("from GoFastItemImage image where image.goFastItem.gfiId=?");
		    	query.setParameter(0, item.getGfiId());
		    	List images = query.list();
		    	if(images!=null && images.size()>0)
		    		dto.setGoFastItemImages(images);
		    }	
			return dto;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
		}
		return null;
	}
	@Transactional(readOnly = true)
	public List  getFilter(String key,Integer cateId) {
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList();
		List goFastFilters = new ArrayList<GoFastFilterDTO>(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Query query = session.createQuery("from GoFastSettingTran settings where settings.id.gfstKey=? and " +
					" settings.id.goFastSetting.goFastSettingCate.gfscId=?");
			query.setParameter(0, key);
			query.setParameter(1, cateId);
			List<GoFastSettingTran> list = query.list();
		
		    if(list!=null && list.size()>0){
		    	int size = list.size();
		    	for (GoFastSettingTran setting : list) {
		    		GoFastFilterDTO dto = new GoFastFilterDTO();
		    		GoFastSettingTranPK pk = setting.getId();
		    		dto.setGfstKey(pk.getGfstKey());
		    		dto.setGoFastSetting(pk.getGoFastSetting());
		    		goFastFilters.add(dto);
				} 
		    }	
		    query = session.createQuery("from GoFastSetting setting where setting.goFastSettingCate.gfscId=?");
		    query.setParameter(0, cateId);
		    List<GoFastSetting> goFastSettings = query.list();
		    transList.add(goFastFilters);
		    transList.add(goFastSettings);
			return transList;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
		}
		return null;
	}
	
	@Transactional(readOnly = true)
	public List<GoFastSettingCate>  getSettingCatalogues() {
		// TODO Auto-generated method stub
		ArrayList transList = new ArrayList();
		List goFastFilters = new ArrayList<GoFastFilterDTO>(); 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try { 
			Query query = session.createQuery("from GoFastSettingCate cate order by cate.gfscId asc"); 
			List<GoFastSettingCate> list = query.list(); 
			return list;
		} catch (Exception re) {
			re.printStackTrace();
		}finally{
		}
		return null;
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void setFilter(String key, Integer settingId, String settingValue) {
		if(settingValue!=null){
			Query query  =null;
			Session  session = sessionAnnotationFactory.getCurrentSession();
			if(settingValue.equals("0")){ // delete 
				query =session.createQuery("delete GoFastSettingTran setting where setting.id.gfstKey=? and setting.id.goFastSetting.gfsId=?");
				query.setParameter(0, key);
				query.setParameter(1, settingId);
				query.executeUpdate();
			}else{ // insert
				GoFastSettingTran settingTran =new GoFastSettingTran();
				GoFastSettingTranPK pk = new GoFastSettingTranPK();
				pk.setGfstKey(key);
				GoFastSetting setting = new GoFastSetting();
				setting.setGfsId(settingId);
				pk.setGoFastSetting(setting);
				settingTran.setId(pk);
				session.save(settingTran);
			}
		}
		
		// TODO Auto-generated method stub
		
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int clearCateSetting(String key, Integer cateId) {
			Query query  =null;
			Session  session = sessionAnnotationFactory.getCurrentSession();
			GoFastSettingCate cate = new GoFastSettingCate();
			cate.setGfscId(cateId);
				query =session.createQuery("from GoFastSettingTran " +
						" setting where setting.id.gfstKey=? and setting.id.goFastSetting.goFastSettingCate.gfscId =?");
				query.setParameter(0, key);
				query.setParameter(1, cateId);
				List<GoFastSettingTran> goFastSettingTrans=query.list();
				for (GoFastSettingTran goFastSettingTran : goFastSettingTrans) {
					session.delete(goFastSettingTran);
				} 
				return 1; 
	} 
	@Transactional(readOnly = true)
	public GoFastCate findGoFastCatById(Integer gfcaId) {
		// TODO Auto-generated method stub
		return null;
	}
	public int updateGoFastCat(GoFastCate goFastCate) {
		// TODO Auto-generated method stub
		return 0;
	}
	public Integer saveGoFastCat(GoFastCate transientInstance) {
		// TODO Auto-generated method stub
		return null;
	}
	public void deleteGoFastCat(GoFastCate persistentInstance) {
		// TODO Auto-generated method stub
		
	}
	
	@Transactional(readOnly = true)
	public List searchGoFastCat(GoFastCate persistentInstance, Paging paging) {
		// TODO Auto-generated method stub
		return null;
	}
}
