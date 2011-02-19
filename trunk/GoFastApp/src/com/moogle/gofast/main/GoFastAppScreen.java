package com.moogle.gofast.main;

import net.rim.device.api.browser.field2.BrowserField;
import net.rim.device.api.browser.field2.BrowserFieldConfig;
import net.rim.device.api.io.transport.ConnectionFactory;
import net.rim.device.api.io.transport.TransportInfo;
import net.rim.device.api.system.Bitmap;
import net.rim.device.api.system.Display;
import net.rim.device.api.ui.Field;
import net.rim.device.api.ui.FieldChangeListener;
import net.rim.device.api.ui.Font;
import net.rim.device.api.ui.FontFamily;
import net.rim.device.api.ui.FontManager;
import net.rim.device.api.ui.Graphics;
import net.rim.device.api.ui.Manager;
import net.rim.device.api.ui.ScrollChangeListener;
import net.rim.device.api.ui.UiApplication;
import net.rim.device.api.ui.XYRect;
import net.rim.device.api.ui.component.BitmapField;
import net.rim.device.api.ui.component.ButtonField;
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
		int dirction = Display.getOrientation();
        
		HeaderBar h = new HeaderBar("Pomotion " + dirction);
		// h.showDate(false);
		// h.showSignal(false);
		// h.showTime(false);
		h.setBackgroundColour(0xCCE9FD);
		h.setBatteryBackground(0xEE1155);
		h.setFontColour(0x2233FF);
		VerticalFieldManager vfmBanner = new VerticalFieldManager(USE_ALL_WIDTH);

        LabelField lfTitle = new LabelField("Promotion",USE_ALL_WIDTH);
        

            try 
            {
                FontFamily typeface = FontFamily.forName("MyFont");
                Font myFont = typeface.getFont(Font.PLAIN, hiBanner);
                lfTitle.setFont(myFont); 
            }
            catch (ClassNotFoundException e) 
            {
               Dialog.inform(e.getMessage());
            }
        
        lfTitle.setBackground(BackgroundFactory.createSolidBackground(0xEE1155));
		
		// Define rows and columns
		int rows = 1;
		int cols = 8;

		labelname = new LabelField("", FIELD_HCENTER);

		// Instantiate a GridFieldManager with 1 rows and 5 columns
		GridFieldManager gridFieldManager = new GridFieldManager(rows, cols,
				Field.FIELD_LEFT | Manager.USE_ALL_WIDTH | Manager.NO_HORIZONTAL_SCROLL
			 | Manager.NO_VERTICAL_SCROLL);

		Bitmap bgImage = Bitmap.getBitmapResource("img/bg.png");

		bt1 = new MyBitmapField("bt1", Bitmap
				.getBitmapResource("img/ic_newsfeed_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt1.setChangeListener(this);
		bt2 = new MyBitmapField("bt2", Bitmap
				.getBitmapResource("img/ic_notifications_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt2.setChangeListener(this);
		bt3 = new MyBitmapField("bt3", Bitmap
				.getBitmapResource("img/ic_search_text.png"),
				BitmapField.FOCUSABLE);
		bt3.setChangeListener(this);

		bt4 = new MyBitmapField("bt4", Bitmap
				.getBitmapResource("img/ic_pick_album.png"),
				BitmapField.FOCUSABLE);
		bt4.setChangeListener(this);
		bt5 = new MyBitmapField("bt5", Bitmap
				.getBitmapResource("img/ic_profile_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt5.setChangeListener(this);
		/*
		 * ic_newsfeed_titlebar.png ic_notifications_titlebar.png
		 * ic_photo_comment.png ic_search_text.png
		 */

		bt6 = new MyBitmapField("bt1", Bitmap
				.getBitmapResource("img/ic_friends_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt6.setChangeListener(this);
		bt7 = new MyBitmapField("bt2", Bitmap
				.getBitmapResource("img/ic_photos_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt7.setChangeListener(this);
		bt8 = new MyBitmapField("bt3", Bitmap
				.getBitmapResource("img/ic_pick_album.png"),
				BitmapField.FOCUSABLE);
		bt8.setChangeListener(this);
		bt9 = new MyBitmapField("bt4", Bitmap
				.getBitmapResource("img/ic_profile_titlebar.png"),
				BitmapField.FOCUSABLE);
		bt9.setChangeListener(this);
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
		gridFieldManager.setBackground(BackgroundFactory.createSolidBackground(0xD8D8D8));
		gridFieldManager.setCellPadding(1);
		gridFieldManager.setColumnPadding(23);
		
		
		// Add button fields to the GridFieldManager
		gridFieldManager.add(bt1);
		gridFieldManager.add(bt2);
		gridFieldManager.add(bt3);
		gridFieldManager.add(bt4);
		gridFieldManager.add(bt5);

		gridFieldManager.add(bt6);

		gridFieldManager.add(bt7);
		gridFieldManager.add(bt8);
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
		
		vfmBanner.add(lfTitle);
		vfmBanner.add(gridFieldManager);
		setBanner(vfmBanner);
		
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
		bfc.setProperty(BrowserFieldConfig.JAVASCRIPT_ENABLED, Boolean.TRUE);
		bfc.setProperty(BrowserFieldConfig.USER_SCALABLE, Boolean.TRUE);
		// bfc.setProperty(BrowserFieldConfig.MDS_TRANSCODING_ENABLED,
		// Boolean.FALSE);
		// bfc.setProperty(BrowserFieldConfig.NAVIGATION_MODE,
		// BrowserFieldConfig.NAVIGATION_MODE_POINTER);
		bfc.setProperty(BrowserFieldConfig.NAVIGATION_MODE,
				BrowserFieldConfig.NAVIGATION_MODE_CARET);
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
		myBrowserField
				.requestContent("http://192.168.1.11:8080/GoFastServtlet/listitems");//("http://css-tricks.com/examples/MovingBoxes/");
		// myBrowserField.direquestContent("http://mooglefast.appspot.com/listitems");

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
			myBrowserField2.requestContent("http://www.google.com");
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
	        _tooltip = MyTooltip.addToolTip(UiApplication.getUiApplication(), this.name,this.getContentLeft(), hiBanner+10, 5);;
	    
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

}