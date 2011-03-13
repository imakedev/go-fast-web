package aoe.script;

import javax.microedition.location.Criteria;
import javax.microedition.location.LocationException;
import javax.microedition.location.LocationProvider;

import net.rim.device.api.gps.BlackBerryCriteria;
import net.rim.device.api.gps.BlackBerryLocation;
import net.rim.device.api.gps.GPSInfo;
import net.rim.device.api.script.ScriptableFunction;
import net.rim.device.api.system.Alert;

public final class Vibrate extends ScriptableFunction {
	public Object invoke(Object obj, Object[] args) throws Exception {
		if (!Alert.isVibrateSupported()) {
			return UNDEFINED;
		}

		if (args.length == 1) {
			 double lat = 0;
			 double log = 0;
			int duration = ((Integer) args[0]).intValue();
			//Alert.startVibrate(duration);
			BlackBerryCriteria myCriteria = new BlackBerryCriteria();
			   if (GPSInfo.isGPSModeAvailable(GPSInfo.GPS_MODE_ASSIST))
	           	myCriteria.setMode(GPSInfo.GPS_MODE_ASSIST);
	           else if (GPSInfo.isGPSModeAvailable(GPSInfo.GPS_MODE_AUTONOMOUS))
	           	myCriteria.setMode(GPSInfo.GPS_MODE_AUTONOMOUS);
			myCriteria.setCostAllowed(false);
			try
	        {
	            LocationProvider myProvider = LocationProvider.getInstance(myCriteria);
	        //    Location location = myProvider.getLocation(3000);
	            BlackBerryLocation myLocation =
                    (BlackBerryLocation)myProvider.getLocation(300);
	            	lat = myLocation.getQualifiedCoordinates().getLatitude();
	            	log =myLocation.getQualifiedCoordinates().getLongitude(); 
	            	 
	        }
	        catch ( LocationException lex )
	        {
	            return lex;
	        }
	        return lat+","+log;
		}

		return UNDEFINED;
	}
}