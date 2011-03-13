/*
Copyright (c) 2010 Research In Motion Limited

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
package aoe.script;

import net.rim.device.api.script.Scriptable;
import net.rim.device.api.script.ScriptableFunction;
import net.rim.device.api.system.DeviceInfo;
import net.rim.device.api.ui.Field;
import net.rim.device.api.ui.Keypad;
import net.rim.device.api.ui.Screen;
import net.rim.device.api.ui.TouchEvent;
import net.rim.device.api.ui.TouchGesture;
import net.rim.device.api.ui.TransitionContext;
import net.rim.device.api.ui.UiApplication;
import net.rim.device.api.ui.UiEngineInstance;
import net.rim.device.api.ui.VirtualKeyboard;
import net.rim.device.api.ui.component.LabelField;
import net.rim.device.api.ui.component.SeparatorField;
import net.rim.device.api.ui.component.TextSpinBoxField;
import net.rim.device.api.ui.container.HorizontalFieldManager;
import net.rim.device.api.ui.container.PopupScreen;
import net.rim.device.api.ui.container.VerticalFieldManager;

public final class SpinnerOpen extends ScriptableFunction {
 
	private SpinnerSample _spinnerSample = null;
	
	public SpinnerOpen(SpinnerSample spinner) {
		_spinnerSample = spinner;
	}
	
	public Object invoke(Object obj, Object[] args) throws Exception {
	
		if (args.length == 2) {
			Scriptable stringArray  = (Scriptable) args[0];
	        int count = stringArray.getElementCount();
	        String[] choices = new String[count];
	        for (int i=0; i<count; i++) {
	            choices[i] = stringArray.getElement(i).toString();
	        }
			
	        int selectedIndex = ((Integer)args[1]).intValue();
	        
			final SampleSpinnerScreen customSpinnerPopup = new SampleSpinnerScreen(_spinnerSample.getTitle(), 
					choices,
					_spinnerSample.getVisibleRows(),
					_spinnerSample.getRowHeight(),
					selectedIndex);
			
			final UiApplication uiApp = UiApplication.getUiApplication();
			
			TransitionContext transition = new TransitionContext(TransitionContext.TRANSITION_ZOOM);
	        transition.setIntAttribute(TransitionContext.ATTR_DURATION, 250);
	        transition.setIntAttribute(TransitionContext.ATTR_KIND, TransitionContext.KIND_IN);
	        
	        UiEngineInstance engine = uiApp.getUiEngineInstance();
	        engine.setTransition(null, customSpinnerPopup, UiEngineInstance.TRIGGER_PUSH, transition);

	        transition = new TransitionContext(TransitionContext.TRANSITION_ZOOM);
	        transition.setIntAttribute(TransitionContext.ATTR_DURATION, 250);
	        transition.setIntAttribute(TransitionContext.ATTR_KIND, TransitionContext.KIND_OUT);
	        engine.setTransition(customSpinnerPopup, null, UiEngineInstance.TRIGGER_POP, transition); 
			
			uiApp.invokeAndWait (new Runnable() {
			    public void run()
			    {
			    	uiApp.pushModalScreen(customSpinnerPopup);
			    }
			});	
			
			if(customSpinnerPopup.isSet())
	        {    
	            return new Integer(customSpinnerPopup.getChoice());
	        }              
		}
		return UNDEFINED;
	}
	
	public final static class SampleSpinnerScreen extends PopupScreen     
	{
	    private TextSpinBoxField _spinBoxField;
	    private boolean _isSet;        
	    
	    /**
	     * Creates a new CustomSpinnerPopup object
	     */
	    public SampleSpinnerScreen(String title, String[] choices, int visibleRows, int rowHeight, int selectedIndex)
	    {           
	        super(new VerticalFieldManager(), Screen.DEFAULT_CLOSE);   
	       
	        _spinBoxField = new CustomTextSpinBoxField(choices);
	        _spinBoxField.setVisibleRows(visibleRows);
	        _spinBoxField.setRowHeight(rowHeight);
	        if (selectedIndex < choices.length && selectedIndex > 0)
	        	_spinBoxField.setSelectedIndex(selectedIndex);
	        else
	        	_spinBoxField.setSelectedIndex(0);
	        add(new LabelField(title));
	        add(new SeparatorField());
	        HorizontalFieldManager hfm = new HorizontalFieldManager(Field.FIELD_HCENTER);
	        hfm.add(_spinBoxField);
	        add(hfm);     
	        // Turn off the virtual keyboard
	        final VirtualKeyboard virtualKeyboard = this.getVirtualKeyboard();
	        if (virtualKeyboard != null) {
	            virtualKeyboard.setVisibility(VirtualKeyboard.HIDE);
	        }
	    }
	    
	    
	    /**
	     * Retrieves the currently selected choice
	     * @return The currently selected choice
	     */
	    public int getChoice()
	    {
	        return _spinBoxField.getSelectedIndex();
	    }
	    
	    
	    /**
	     * Indicates whether the TextSpinBoxField has changed from
	     * its initial state.
	     * @return True if the selected choice has been modified, otherwise false
	     */
	    public boolean isSet()
	    {
	        return _isSet;
	    }        
	    
	    
	    /**
         * @see Screen#touchEvent(TouchEvent)
         */
        protected boolean touchEvent(TouchEvent message)
        {
            if(message.getEvent() == TouchEvent.GESTURE)
            {
                TouchGesture touchGesture = message.getGesture(); 
                if(touchGesture.getEvent() == TouchGesture.TAP)
                {    
                	String osVersion = DeviceInfo.getSoftwareVersion();
                	if (osVersion.startsWith("5.0")) {
                		return super.touchEvent(message);
                	}
                	else {              		
	                    _isSet = true;                                    
	                    close();
	                    return true;
                	}
                }
            }
            return super.touchEvent(message);
        }     
	    
	    /**
	     * @see Screen#invokeAction(int)
	     */
	    protected boolean invokeAction(int action)
	    {
	    	if(action == ACTION_INVOKE)
            {                                   
                _isSet = true;                                
                close();
                return true;
            }          
            return super.invokeAction(action); 
	    }    
	    
	    
	    /**
	     * @see Screen#close()
	     */
	    public void close()
	    {
	        if(!_isSet)
	        {                
	            _spinBoxField.setSelectedIndex(0);
	        }
	        super.close();
	    }  
	    
	    /**
         * @see Screen#keyChar(char, int, int)  
         */
        protected boolean keyChar(char key, int status, int time)
        {      
            if(key == Keypad.KEY_ENTER)
            {
                _isSet = true;                                
                close();
                return true;
            }            
            return super.keyChar(key, status, time);            
        } 
	}
}




