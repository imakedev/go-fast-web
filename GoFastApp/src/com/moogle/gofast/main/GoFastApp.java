package com.moogle.gofast.main;

import net.rim.device.api.ui.UiApplication;

 
public class GoFastApp  extends UiApplication {
	public static void main(String[] args) {
		GoFastApp app = new GoFastApp();
		app.enterEventDispatcher();
	}

	public GoFastApp() {
		pushScreen(new GoFastAppScreen());
	}
}
