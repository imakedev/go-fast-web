package com.moogle.gofast.main;

import javax.microedition.location.LocationProvider;

import net.rim.device.api.browser.field2.BrowserField;
import net.rim.device.api.browser.field2.BrowserFieldConfig;
import net.rim.device.api.gps.BlackBerryCriteria;
import net.rim.device.api.gps.BlackBerryLocation;
import net.rim.device.api.gps.GPSInfo;
import net.rim.device.api.io.transport.ConnectionFactory;
import net.rim.device.api.io.transport.TransportInfo;
import net.rim.device.api.system.Bitmap;
import net.rim.device.api.system.Display;
import net.rim.device.api.system.GPRSInfo;
import net.rim.device.api.ui.Color;
import net.rim.device.api.ui.Field;
import net.rim.device.api.ui.FieldChangeListener;
import net.rim.device.api.ui.Font;
import net.rim.device.api.ui.FontFamily;
import net.rim.device.api.ui.Manager;
import net.rim.device.api.ui.ScrollChangeListener;
import net.rim.device.api.ui.UiApplication;
import net.rim.device.api.ui.XYEdges;
import net.rim.device.api.ui.XYRect;
import net.rim.device.api.ui.component.BitmapField;
import net.rim.device.api.ui.component.Dialog;
import net.rim.device.api.ui.component.LabelField;
import net.rim.device.api.ui.container.GridFieldManager;
import net.rim.device.api.ui.container.MainScreen;
import net.rim.device.api.ui.container.VerticalFieldManager;
import net.rim.device.api.ui.decor.BackgroundFactory;
import net.rim.device.api.ui.decor.Border;
import net.rim.device.api.ui.decor.BorderFactory;

public class GoFastAppScreen extends MainScreen implements FieldChangeListener {
	/*
	 * private Runnable _popRunnable; private BrowserField myBrowserField;
	 */
	private BitmapField _banner;
	private BitmapField bt1;
	private BitmapField bt2;
	private BitmapField bt3;
	private BitmapField bt4;
	private BitmapField bt5;

	private BitmapField bt6;
	private BitmapField bt7;
	private BitmapField bt8;
	private BitmapField bt9;
	private BitmapField bt10;
	private BitmapField bt11;
	private BitmapField bt12;
	private BitmapField bt13;
	private BitmapField bt14;
	private BitmapField bt15;
	private BitmapField bg;
	public VerticalFieldManager vfm;
	public BrowserFieldConfig bfc;
	public BrowserField myBrowserField;
	public LabelField labelname;
    public XYRect xyTool;
	ConnectionFactory cf;
	int[] preferredTransportTypes = { TransportInfo.TRANSPORT_BIS_B };
	private ScrollChangeListener paramScrollChangeListener;
	private int hiBanner=100;

	public GoFastAppScreen() {
		// super(NO_VERTICAL_SCROLL);
		//http://maps.google.com/maps/geo?q=13.777901,100.807000&output=xml
		int dirction = Display.getOrientation();
		BlackBerryCriteria myCriteria = new BlackBerryCriteria();
		   if (GPSInfo.isGPSModeAvailable(GPSInfo.GPS_MODE_ASSIST)){
           	myCriteria.setMode(GPSInfo.GPS_MODE_ASSIST);
           	System.out.println("GPSInfo.GPS_MODE_ASSIST="+GPSInfo.GPS_MODE_ASSIST);
		   }
           else if (GPSInfo.isGPSModeAvailable(GPSInfo.GPS_MODE_AUTONOMOUS)){
           	myCriteria.setMode(GPSInfo.GPS_MODE_AUTONOMOUS);
           	System.out.println("GPSInfo.GPS_MODE_AUTONOMOUS="+GPSInfo.GPS_MODE_AUTONOMOUS);
           }
		//myCriteria.setCostAllowed(false);
		double lat = 0;
		 double log = 0;
		try
        {
            LocationProvider myProvider = LocationProvider.getInstance(myCriteria);
         
        //    Location location = myProvider.getLocation(3000);
            BlackBerryLocation myLocation =
                (BlackBerryLocation)myProvider.getLocation(300);
            	lat = myLocation.getQualifiedCoordinates().getLatitude();
            	log =myLocation.getQualifiedCoordinates().getLongitude();
            	System.out.println("myLocation.getAddressInfo();="+myLocation.getAddressInfo());
        }catch (Exception e) {
			// TODO: handle exception
        	System.out.println("Error ==========================="+e.getMessage());
		}
        System.out.println("Chatchai Debug="+lat);
		HeaderBar headerBar = new HeaderBar("Pomotion " + dirction);
		// h.showDate(false);
		// h.showSignal(false);
		// h.showTime(false);
		headerBar.setBackgroundColour(0xCCE9FD);
		headerBar.setBatteryBackground(0xEE1155);
		headerBar.setFontColour(0x2233FF);
		VerticalFieldManager vfmBanner = new VerticalFieldManager(USE_ALL_WIDTH);
		//HorizontalFieldManager vfmBanner = new HorizontalFieldManager(USE_ALL_WIDTH);
		GridFieldManager gridFieldManagerAoe = new GridFieldManager(2, 1,
				Field.FIELD_HCENTER | Manager.USE_ALL_WIDTH | Manager.NO_HORIZONTAL_SCROLL
			 | Manager.NO_VERTICAL_SCROLL);
		//HorizontalFieldManager horizontalFieldManager = new HorizontalFieldManager(USE_ALL_WIDTH);
		
       // LabelField lfTitle = new LabelField("Promotions",USE_ALL_WIDTH );
		 LabelField lfTitle = new LabelField("Ladprao",USE_ALL_WIDTH);
        

            try 
            {
                FontFamily typeface = FontFamily.forName("Tahoma, sans-serif");
                Font myFont = typeface.getFont(Font.PLAIN, 30);
                Font[] fonts = typeface.getFonts();
                for(int i =0 ;i < fonts.length;i++){
                	System.out.println("chatchai debug font="+fonts[i].toString());
                }
                lfTitle.setFont(myFont); 
                
            }
            catch (ClassNotFoundException e) 
            {
               Dialog.inform(e.getMessage());
            }
        
       // lfTitle.setBackground(BackgroundFactory.createSolidBackground(0xEE1155));
            lfTitle.setBackground(BackgroundFactory.createSolidBackground(0xACB0B0));
            
		
		// Define rows and columns
		int rows = 1;
		int cols = 4;

		labelname = new LabelField("", FIELD_HCENTER);

		// Instantiate a GridFieldManager with 1 rows and 5 columns
		GridFieldManager gridFieldManager = new GridFieldManager(rows, cols,
				Field.FIELD_HCENTER | Manager.USE_ALL_WIDTH | Manager.NO_HORIZONTAL_SCROLL
			 | Manager.NO_VERTICAL_SCROLL);

		Bitmap bgImage = Bitmap.getBitmapResource("img/bg.png");
		 
		bt1 = new MyBitmapField("bt1", Bitmap
				.getBitmapResource("img/bb_5_08.jpg"),
				BitmapField.FOCUSABLE);
		bt1.setChangeListener(this);
		bt2 = new MyBitmapField("bt2", Bitmap
				.getBitmapResource("img/bb_5_13.jpg"),
				BitmapField.FOCUSABLE);
		bt2.setChangeListener(this);
		bt3 = new MyBitmapField("bt3", Bitmap
				.getBitmapResource("img/bb_5_more.jpg"),
				BitmapField.FOCUSABLE);
		bt3.setChangeListener(this);
		 
		bt4 = new MyBitmapField("bt4", Bitmap
				.getBitmapResource("img/bb_5_setting.jpg"),
				BitmapField.FOCUSABLE);
		 
		bt4.setChangeListener(this);
	 bt5 = new MyBitmapField("bt5", Bitmap
				.getBitmapResource("img/icon_bb5.jpg"),
				BitmapField.FOCUSABLE);
		bt5.setChangeListener(this);
		/*
		 * ic_newsfeed_titlebar.png ic_notifications_titlebar.png
		 * ic_photo_comment.png ic_search_text.png
		 */

		bt6 = new MyBitmapField("bt1", Bitmap
				.getBitmapResource("img/icon_bb6.jpg"),
				BitmapField.FOCUSABLE);
		bt6.setChangeListener(this);
		bt7 = new MyBitmapField("bt2", Bitmap
				.getBitmapResource("img/sport.png"),
				BitmapField.FOCUSABLE);
		bt7.setChangeListener(this);
		/*bt8 = new MyBitmapField("bt3", Bitmap
				.getBitmapResource("img/ic_pick_album.png"),
				BitmapField.FOCUSABLE);
		bt8.setChangeListener(this);
		bt9 = new MyBitmapField("bt4", Bitmap
				.getBitmapResource("img/ic_profile_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt9.setChangeListener(this);
		 bt10 = new MyBitmapField("bt5", Bitmap
				  .getBitmapResource("img/icon5.gif"), BitmapField.FOCUSABLE);
				   bt10.setChangeListener(this);*/
				   
		/*
		 * bt10 = new MyBitmapField("bt5", Bitmap
		 * .getBitmapResource("img/icon5.gif"), BitmapField.FOCUSABLE);
		 * bt10.setChangeListener(this);
		 * 
		 * bt11 = new MyBitmapField("bt1", Bitmap
		 * .getBitmapResource("img/message.gif"), BitmapField.FOCUSABLE);
		 * bt11.setChangeListener(this); bt12 = new MyBitmapField("bt2", Bitmap
		 * .getBitmapResource("img/icon2.gif"), BitmapField.FOCUSABLE);
		 * bt12.setChangeListener(this); bt13 = new MyBitmapField("bt3", Bitmap
		 * .getBitmapResource("img/icon3.gif"), BitmapField.FOCUSABLE);
		 * bt13.setChangeListener(this); bt14 = new MyBitmapField("bt4", Bitmap
		 * .getBitmapResource("img/icon4.gif"), BitmapField.FOCUSABLE);
		 * bt14.setChangeListener(this); bt15 = new MyBitmapField("bt5", Bitmap
		 * .getBitmapResource("img/icon5.gif"), BitmapField.FOCUSABLE);
		 * bt15.setChangeListener(this);
		 */

		gridFieldManager.setChangeListener(this);
		//gridFieldManager.setBackground(BackgroundFactory.createBitmapBackground(bgImage));
		gridFieldManager.setBackground(BackgroundFactory.createSolidBackground(0x000000));
		gridFieldManager.setCellPadding(1);
		gridFieldManager.setColumnPadding(50);
		XYEdges padding = new XYEdges(15, 15, 15, 15);
		int color = Color.CRIMSON;
		int lineStyle = Border.STYLE_DOTTED;
		Border roundedBorder = BorderFactory.createRoundedBorder(padding, 
		     color, lineStyle);
		//roundedBorderEdit.setBorder(roundedBorder);
		//Border border = new Border(new net.rim.device.api.ui.XYEdges(),Border.STYLE_SOLID);
	 	gridFieldManager.setBorder(roundedBorder);
		//gridFieldManager.setHorizontalScroll(Field.FIELD_VCENTER);
	 	
		// Add button fields to the GridFieldManager
		gridFieldManager.add(bt1);
		gridFieldManager.add(bt2);
		gridFieldManager.add(bt3);
		gridFieldManager.add(bt4);
		//setPositionChild(bt7, 0, 0);
		/*gridFieldManager.add(bt5);

		gridFieldManager.add(bt6);*/
/*
		gridFieldManager.add(bt7);
		gridFieldManager.add(bt8);*/
		/*gridFieldManager.add(bt8);
		gridFieldManager.add(bt9);*/
		
	/*	gridFieldManager.add(bt8);
		gridFieldManager.add(bt9);*/
		//gridFieldManager.add(bt10);

		/*
		 * gridFieldManager.add(bt11); gridFieldManager.add(bt12);
		 * gridFieldManager.add(bt13); gridFieldManager.add(bt14);
		 * gridFieldManager.add(bt15);
		 */

		vfm = new VerticalFieldManager(USE_ALL_WIDTH);
		vfm.setChangeListener(this);
		
		 //vfm.setBackground(BackgroundFactory.createBitmapBackground(bgImage));
		vfm.setBackground(BackgroundFactory.createSolidBackground(0xD8D8D8));
		//setBackground(BackgroundFactory.createSolidBackground(0xD8D8D8));
		//gridFieldManager.setBackground();
		//gridFieldManager.setColumnProperty(0, GridFieldManager.FIXED_SIZE, 478);
		GridFieldManager gridFieldManager2 = new GridFieldManager(rows, cols,
				Field.FIELD_HCENTER | Manager.USE_ALL_WIDTH | Manager.NO_HORIZONTAL_SCROLL
			 | Manager.NO_VERTICAL_SCROLL);
		LayoutManager layoutManager = new LayoutManager();
		/*CenteredFieldManager center = new CenteredFieldManager(USE_ALL_WIDTH);
		center.add(lfTitle);*/
		//center.add(bt9);
	/*	gridFieldManager2.setCellPadding(1);
		gridFieldManager2.setColumnPadding(60);*/
	/*	gridFieldManager2.add(bt5,Field.FIELD_LEFT);
		gridFieldManager2.add(lfTitle,FIELD_HCENTER|Field.FIELD_VCENTER);
		gridFieldManager2.add(bt7,FIELD_RIGHT);*/
		/*gridFieldManager2.add(bt5,0);
		gridFieldManager2.add(lfTitle,1);
		gridFieldManager2.add(bt7,2);*/
		layoutManager.add(bt5);
	//	layoutManager.add(lfTitle);
		layoutManager.add(bt7);
		 
	//	gridFieldManager2.add(center);
		//gridFieldManager2.add(bt10);
		//horizontalFieldManager.add(center);
		 
		//horizontalFieldManager.add(bt9); 
		//vfmBanner.add(lfTitle);
		gridFieldManager2.setBorder(roundedBorder);
		vfmBanner.add(layoutManager);
		vfmBanner.add(gridFieldManager);
		/*gridFieldManagerAoe.add(gridFieldManager2);
		gridFieldManagerAoe.add(gridFieldManager);*/
		//horizontalFieldManager.add(lfTitle);
		setBanner(vfmBanner);
		//setBanner(gridFieldManagerAoe);
		
		//setTitle("--------------------------");
		setScrollListener(paramScrollChangeListener);
		//setBackground(BackgroundFactory.createSolidBackground(0xD8D8D8));
		//vfm.add(gridFieldManager);
		// vfm.add(labelname);
		// add(vfm);
		cf = new ConnectionFactory();
		cf.setPreferredTransportTypes(preferredTransportTypes);
	
		bfc = new BrowserFieldConfig();
		bfc.setProperty(BrowserFieldConfig.ALLOW_CS_XHR, Boolean.TRUE);
		//bfc.setProperty(BrowserFieldConfig.ALLOW_CS_XHR, Boolean.TRUE);
		//  bfc.setProperty(BrowserFieldConfig.ENABLE_GEARS, Boolean.TRUE);
		 //Default = Set by rendering engine contentType="text/html; charset=utf-8"
		//bfc.setProperty(BrowserFieldConfig.HTTP_HEADERS, "Content-Type=text/html;charset=utf-8");    
		bfc.setProperty(BrowserFieldConfig.JAVASCRIPT_ENABLED, Boolean.TRUE);
		bfc.setProperty(BrowserFieldConfig.USER_SCALABLE, Boolean.FALSE);
		  
		  bfc.setProperty(BrowserFieldConfig.MDS_TRANSCODING_ENABLED,Boolean.FALSE);
		// Boolean.FALSE);
		 bfc.setProperty(BrowserFieldConfig.NAVIGATION_MODE,
		  BrowserFieldConfig.NAVIGATION_MODE_POINTER);
		/*bfc.setProperty(BrowserFieldConfig.NAVIGATION_MODE,
				BrowserFieldConfig.NAVIGATION_MODE_CARET);*/
		bfc.setProperty(BrowserFieldConfig.VIEWPORT_WIDTH, new Integer(Display.getWidth()));
		// bfc.setProperty(BrowserFieldConfig.CONNECTION_FACTORY, cf);

		// myBrowserField= new BrowserField();
		myBrowserField = new BrowserField(bfc);
		/*
		 * BrowserField myBrowserField = new BrowserField();
		 * myBrowserField.requestContent
		 * ("http://localhost:8080/GoFastServtlet/listitems");
		 * //myBrowserField.requestContent
		 * ("http://localhost:8080/GoFastServtlet/index.html");
		 * //myBrowserField.requestContent("http://mooglefast.appspot.com");
		 * vfm.add(myBrowserField);
		 */
		// add(myBrowserField);
		add(vfm);
	//	setBackground(BackgroundFactory.createSolidBackground(0x000000));
		/*myBrowserField
				.requestContent("http://192.168.1.11:8080/GoFastServtlet/listitems");//("http://css-tricks.com/examples/MovingBoxes/");
*/
		 //myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems?page=items&brand=bb&direction=1");
		 myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems?brand=bb&direction=1");

		vfm.add(myBrowserField);
		/*
		 * _popRunnable = new Runnable() { public void run() { popScreen(null);
		 * } };
		 */
		/*
		 * (new Thread() { public void run() { BrowserField myBrowserField = new
		 * BrowserField(); add(myBrowserField);
		 * //myBrowserField.requestContent("http://www.blackberry.com");
		 * HttpConnection c = null; InputStream is = null; int rc; try { c =
		 * (HttpConnection
		 * )Connector.open("http://localhost:8080/GoFastServtlet/listitems");
		 * 
		 * // Getting the response code will open the connection, // send the
		 * request, and read the HTTP response headers. // The headers are
		 * stored until requested. rc = c.getResponseCode();
		 * System.out.println("[ aoe debug ] HTTP response1 code: " + rc); if
		 * (rc != HttpConnection.HTTP_OK) {
		 * 
		 * System.out.println("[ aoe debug ] HTTP response2 code: " + rc);
		 * 
		 * myBrowserField.displayContent(c,
		 * "http://localhost:8080/GoFastServtlet/listitems"); //throw new
		 * IOException("HTTP response code: " + rc);
		 * 
		 * }
		 * 
		 * // is = c.openInputStream();
		 * 
		 * }catch (Exception e) { // TODO: handle exception }
		 * //myBrowserField.requestContent
		 * ("http://localhost:8080/GoFastServtlet/listitems"); } }).start();
		 */

	}

	/*
	 * protected boolean navigationUnclick(int status, int time) { // TODO
	 * Auto-generated method stub
	 * System.out.println("chatchai debug unclick status="+status); return
	 * super.navigationUnclick(status, time); } protected boolean
	 * navigationClick(int status, int time) { // TODO Auto-generated method
	 * stub System.out.println("chatchai debug click status="+status); return
	 * super.navigationClick(status, time); }
	 */
	/*
	 * public void fieldChanged(Field field, int context) { // TODO
	 * Auto-generated method stub if(field == bt1) {
	 * System.out.println("Touched START..."); }
	 * 
	 * }
	 */
	public void fieldChanged(Field field, int context) {
		// TODO Auto-generated method stub
		System.out.println(" xxxxxxxxxxxxxxxxxx " + field);

	}

	class MyparamScrollChangeListener implements ScrollChangeListener {

		public void scrollChanged(Manager paramManager, int paramInt1,
				int paramInt2) {
			// TODO Auto-generated method stub
			
		}
		
		
	}
	
	class MyBitmapField extends BitmapField {
		public MyBitmapField(String name, Bitmap bitmapField, long syte) {
			super(bitmapField, syte);
			this.name = name;
			
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
			System.out.println(" click on " + this.name);
			System.out.println("imei="+GPRSInfo.imeiToString(GPRSInfo.getIMEI(), false));
			System.out.println("phone number="+net.rim.blackberry.api.phone.Phone.getDevicePhoneNumber(false));
			// myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/listitems");
			// myBrowserField.requestContent("http://localhost:8080/GoFastServtlet/index.html");
			/*
			 * myBrowserField
			 * .requestContent("http://mooglefast.appspot.com/listitems");
			 */
			// myBrowserField.deleteAll();
			// vfm.delete(myBrowserField);
			BrowserField myBrowserField2 = new BrowserField(bfc);
			// myBrowserField2.setFocus();
			myBrowserField2.requestContent("http://localhost:8080/GoFastServtlet/listitems?brand=bb&direction=1");
			//myBrowserField2.requestContent("http://localhost:8080/GoFastServtlet/listitems?page=items&brand=bb&direction=1");
			// myBrowserField.direquestContent("http://mooglefast.appspot.com/listitems");
			// vfm.delete(field)
			/*
			 * vfm.add(myBrowserField); synchronized (vfm) { add(vfm); }
			 */

			return super.navigationClick(arg0, arg1);
		}
		 MyTooltip _tooltip;
		
		public void onFocus(int direction) {
			
			
			labelname.setText(this.name);
			
			
			//this.setBorder(BorderFactory.createRoundedBorder(null));
			if ( _tooltip != null ) {
	            _tooltip.removeToolTip();
	            _tooltip = null;
	        }
	        // Display tooltip at 50,50 for 5 seconds
	        _tooltip = MyTooltip.addToolTip(UiApplication.getUiApplication(), this.name,this.getContentLeft(), hiBanner, 5);;
	    
		}

		protected void onUnfocus() {
			labelname.setText("");
			 if ( _tooltip != null ) {
		            // We have displayed a Tooltip - remove it
		            _tooltip.removeToolTip();
		            _tooltip = null;
		        }
		}
		
		
		 

	}
	     class CenteredFieldManager extends Manager {  
		      
		       
		         protected CenteredFieldManager(long style)
		         {
		        	 super(style);
		        }
			// TODO Auto-generated constructor stub}

				protected void sublayout(int width, int height) {  
		            if (getFieldCount() > 0) {  
		                Field centeredField = getField(0);  // get the first (and only) field  
		                layoutChild(centeredField, width, height); // set the field's width and height  
		                setPositionChild(centeredField, (width-centeredField.getWidth())/2, 0);  // center the field horizontally  
		               setExtent(width, centeredField.getHeight());  // set the size of this manager to use the entire screen width  
		           }  
		       }  
		   }  
	     
	     class LayoutManager extends Manager 
	     {

	       public LayoutManager() 
	       { 
	         //construct a manager with vertical scrolling    
	         super(VERTICAL_SCROLL);
	       }

	       //overwrite the nextFocus method for custom navigation  
	       protected int nextFocus(int direction, boolean alt)  
	       {
	             return super.nextFocus(direction, alt);
	       }

	       protected void sublayout(int width, int height) 
	       {
	         Field field;
	         //get total number of fields within this manager
	         int numberOfFields = getFieldCount();     
	         int x = 0;
	         int y = 0;
	         System.out.println("******** Fields: " + numberOfFields + " W/H: " + width + " / " + height );
	         /*
	          * ******** Fields: 3 W/H: 480 / 360
******** X/Y: 20 / 80
******** X/Y: 20 / 80
******** X/Y: 20 / 80
	          */
	         for(int i = 0;i < numberOfFields;i++) {
	           field = getField(i);      //get the field
	           x = 20;
	           y = 80;
	           System.out.println("******** X/Y: " + x + " / " + y);
	           if(i==0){
	        	   setPositionChild(field, 19, 19);  //set the position for the field
		           layoutChild(field, width, 80);  //lay out the field
	           }else{
	        	   /*setPositionChild(field, x, y);  //set the position for the field
		           layoutChild(field, width, y);  //lay out the field
		           */
	        	   setPositionChild(field, 420, 19);  //set the position for the field
		           layoutChild(field, width, 80);  //lay out the field
             }
	           
	         }
	         setPosition(0, 80);
	         setExtent(width, 80);

	       }

	       public int getPreferredWidth() 
	       {
	        return 160;
	       }

	       public int getPreferredHeight() 
	       {
	         int height= 0;
	         int numberOfFields= getFieldCount();

	         for(int i= 0; i < numberOfFields; i++) 
	         {
	             height += getField(i).getPreferredHeight();
	         }
	         return 160;
	       }
	     }
}