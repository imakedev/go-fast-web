package com.moogle.gofast.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListItems
 */
public class ListItems extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	private static final String BB_ORIENTATION_PORTRAIT_PATH  ="/WEB-INF/jsp/blackberry/portrait/";
	private static final String BB_ORIENTATION_LANDSCAPE_PATH  ="/WEB-INF/jsp/blackberry/landscape/";
	private static final String BB_ORIENTATION_SQUARE_PATH  ="/WEB-INF/jsp/blackberry/square/"; 
	private static final int BB_DIRECTION_LANDSCAPE=1;
	private static final int BB_DIRECTION_PORTRAIT=2;
	private static final int BB_DIRECTION_SQUARE=3;
	private static final String IPHONE_PATH= "/WEB-INF/jsp/";
    private static final String IPHONE="iphone";
    private static final String BB="bb";
    /**
     * Default constructor. 
     */
    public ListItems() {
        // TODO Auto-generated constructor stub
    }
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//System.out.println("doProcess");
    	String page=request.getParameter("page");
    	String brand=request.getParameter("brand"); //iphone or bb
    	String direction=request.getParameter("direction");
    	String jsp_path = IPHONE_PATH;
    	if(brand!=null && brand.equals(BB)){ // bb
    		if(direction!=null && direction.length()>0)
    		switch(Integer.parseInt(direction)) 
    		{
    		   case BB_DIRECTION_LANDSCAPE:
    			   jsp_path=BB_ORIENTATION_LANDSCAPE_PATH; break;
    		   case BB_DIRECTION_PORTRAIT:
    			   jsp_path=BB_ORIENTATION_PORTRAIT_PATH; break;
    		   case BB_DIRECTION_SQUARE:
    			   jsp_path=BB_ORIENTATION_SQUARE_PATH; break;
    		   default:
    			   jsp_path=BB_ORIENTATION_LANDSCAPE_PATH; break;
    		}
    	}else {
    		// iphone
    	}
    	if(!(page!=null && page.length()>0))
    		page = "items";
    	RequestDispatcher dispatcher = 
    	  getServletContext().getRequestDispatcher(jsp_path+page+".jsp");
    	dispatcher.forward(request, response);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request,response);
	}

}
