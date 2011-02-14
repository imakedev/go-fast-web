package com.moogle.gofast.main;

import net.rim.device.api.browser.field2.BrowserField;
import net.rim.device.api.system.Bitmap;
import net.rim.device.api.ui.Color;
import net.rim.device.api.ui.Field;
import net.rim.device.api.ui.FieldChangeListener;
import net.rim.device.api.ui.component.BitmapField;
import net.rim.device.api.ui.component.Dialog;
import net.rim.device.api.ui.component.LabelField;
import net.rim.device.api.ui.container.GridFieldManager;
import net.rim.device.api.ui.container.MainScreen;
import net.rim.device.api.ui.container.VerticalFieldManager;
import net.rim.device.api.ui.decor.BackgroundFactory;
import net.rim.device.api.ui.extension.component.PictureScrollField;
import net.rim.device.api.ui.extension.component.PictureScrollField.HighlightStyle;
import net.rim.device.api.ui.extension.component.PictureScrollField.ScrollEntry;
 

public class GoFastAppScreen  extends MainScreen  implements FieldChangeListener{
	   /*private Runnable _popRunnable;
	   private BrowserField myBrowserField;*/
	private BitmapField _banner ;
	private BitmapField bt1 ;
	private BitmapField bt2 ;
	private BitmapField bt3 ;
	private BitmapField bt4 ;
	private BitmapField bt5 ;
	private BitmapField bg ;
	public VerticalFieldManager vfm ;
	public BrowserField myBrowserField;
	public LabelField labelname;
	
	public GoFastAppScreen() {
		//super(NO_VERTICAL_SCROLL);
		HeaderBar h = new HeaderBar("Application Title");
//		h.showDate(false);
//		h.showSignal(false);
//		h.showTime(false);
		h.setBackgroundColour(0xCCE9FD);
		h.setBatteryBackground(0xEE1155);
		h.setFontColour(0x2233FF);
		setTitle(h);
		
		
		//setTitle("GoFast");
		
		
		


		// Define rows and columns
		int rows = 1;
		int cols = 5;

		labelname = new LabelField("", FIELD_HCENTER);
		
		// Instantiate a GridFieldManager with 1 rows and 5 columns
		GridFieldManager gridFieldManager = new GridFieldManager(rows, cols,
				Field.FIELD_HCENTER);
		
		Bitmap bgImage = Bitmap.getBitmapResource("img/bg.png");
		
		  bt1 = new MyBitmapField("bt1",Bitmap
				.getBitmapResource("img/28-star.png"), BitmapField.FOCUSABLE );
		  bt1.setChangeListener(this); 
		  bt2 = new MyBitmapField("bt2",Bitmap
				.getBitmapResource("img/48-fork-and-knife.png"), BitmapField.FOCUSABLE );
		  bt2.setChangeListener(this); 
		  bt3 = new MyBitmapField("bt3",Bitmap
				.getBitmapResource("img/53-house.png"), BitmapField.FOCUSABLE );
		  bt3.setChangeListener(this); 
		  bt4 = new MyBitmapField("bt4",Bitmap
				.getBitmapResource("img/80-shopping-cart.png"), BitmapField.FOCUSABLE );
		  bt4.setChangeListener(this); 
		  bt5 = new MyBitmapField("bt5",Bitmap
				.getBitmapResource("img/82-dog-paw.png"), BitmapField.FOCUSABLE );
		  bt5.setChangeListener(this); 
		gridFieldManager.setChangeListener(this);
		//gridFieldManager.setBackground(BackgroundFactory.createBitmapBackground(bgImage));
		gridFieldManager.setCellPadding(10);
		// Add button fields to the GridFieldManager
		gridFieldManager.add(bt1);
		gridFieldManager.add(bt2);
		gridFieldManager.add(bt3);
		gridFieldManager.add(bt4);
		gridFieldManager.add(bt5);

		vfm = new VerticalFieldManager(USE_ALL_WIDTH);
		vfm.setChangeListener(this);
		//vfm.setBackground(BackgroundFactory.createBitmapBackground(bgImage));
		vfm.setBackground(BackgroundFactory.createSolidBackground(0xD8D8D8));

		vfm.add(gridFieldManager);
		//vfm.add(labelname);
		//add(vfm);
		myBrowserField = new BrowserField();
	/*	BrowserField myBrowserField = new BrowserField();
		myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems");
		//myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/index.html");
		//myBrowserField.requestContent("http://mooglefast.appspot.com");
		vfm.add(myBrowserField);*/
		//add(myBrowserField);
		add(vfm);
		/* _popRunnable = new Runnable() {
	            public void run() {
	                popScreen(null);
	            }
	        };*/
		/*(new Thread()  
     {  
         public void run()  
         {  
         	BrowserField  myBrowserField = new BrowserField();
         	add(myBrowserField);
         	//myBrowserField.requestContent("http://www.blackberry.com");
         	  HttpConnection c = null;
               InputStream is = null;
               int rc; 
               try {
                   c = (HttpConnection)Connector.open("http://localhost:8080/GoFastServtlet/listitems");
                   
                   // Getting the response code will open the connection,
                   // send the request, and read the HTTP response headers.
                   // The headers are stored until requested.
                   rc = c.getResponseCode();
                   System.out.println("[ aoe debug ] HTTP response1 code: " + rc);
                   if (rc != HttpConnection.HTTP_OK) {
                  	 
                  	 System.out.println("[ aoe debug ] HTTP response2 code: " + rc);
                  
                  	 myBrowserField.displayContent(c, "http://localhost:8080/GoFastServtlet/listitems");
                  	 //throw new IOException("HTTP response code: " + rc);
                  	
                   }

                  // is = c.openInputStream();
                   
               }catch (Exception e) {
					// TODO: handle exception
				}
         	//myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems");
         }
     }).start(); */
		
		
	}
	/*protected boolean navigationUnclick(int status, int time) {
		// TODO Auto-generated method stub
		System.out.println("chatchai debug unclick status="+status);
		return super.navigationUnclick(status, time);
	}
	protected boolean navigationClick(int status, int time) {
		// TODO Auto-generated method stub
		System.out.println("chatchai debug click status="+status);
		return super.navigationClick(status, time);
	}*/
	/*public void fieldChanged(Field field, int context) {
		// TODO Auto-generated method stub
		if(field == bt1)
	    { 
	        System.out.println("Touched START...");
	    }
	   
	}
	*/
	public void fieldChanged(Field field, int context) {
		// TODO Auto-generated method stub
		System.out.println(" xxxxxxxxxxxxxxxxxx "+field);
		
	}
	class MyBitmapField extends BitmapField{
		public MyBitmapField (String name,Bitmap bitmapField,long syte){
			super(bitmapField,syte);
			this.name= name;		
		}
		private String name;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		protected boolean navigationClick(int arg0, int arg1) {
			// TODO Auto-generated method stub
			System.out.println(" click on "+this.name);
			
				myBrowserField.requestContent("http://mooglefast.appspot.com/listitems");
			//myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems");
			vfm.add(myBrowserField);

			add(vfm);
			return super.navigationClick(arg0, arg1);
		}
		
            public void onFocus(int direction) {labelname.setText(this.name);}
            protected void onUnfocus() {labelname.setText("");}




		
	}
	 
	
	 
	
	
	
	
}