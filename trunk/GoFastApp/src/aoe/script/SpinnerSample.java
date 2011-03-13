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

public final class SpinnerSample extends Scriptable {
	public static final String FIELD_OPEN = "open";
	public static final String FIELD_TITLE = "title";
	public static final String FIELD_ROWHEIGHT = "rowHeight";
	public static final String FIELD_VISIBLEROWS = "visibleRows";
	
	private SpinnerOpen _spinnerOpen;
	private String _title = "";
	private int _visibleRows = 4;
	private int _rowHeight = 40;

	public SpinnerSample() {
		this._spinnerOpen = new SpinnerOpen(this);
	}

	public Object getField(String name) throws Exception {
		
		if (name.equals(FIELD_OPEN)) {
			return _spinnerOpen;
		} 
		else if (name.equals(FIELD_TITLE)) {
			return new String(_title);
		}
		else if (name.equals(FIELD_ROWHEIGHT)) {
			return new Integer(_rowHeight);
		}
		else if (name.equals(FIELD_VISIBLEROWS)) {
			return new Integer(_visibleRows);
		}
		
		return super.getField(name);
	}
	
	
	public boolean putField(String name, Object value) throws Exception {
		
		if (name.equals(FIELD_TITLE)) {
			if (value != null && value != UNDEFINED) {
				_title = (String)value;
				return true;
			}
		}
		else if (name.equals(FIELD_ROWHEIGHT)) {
			_rowHeight = ((Integer)value).intValue();
			return true;
		}
		else if (name.equals(FIELD_VISIBLEROWS)) {
			_visibleRows =  ((Integer)value).intValue();
			return true;
		}
		
		return false;
	}
	
	public String getTitle() {
		return _title;
	}
	
	public int getVisibleRows() {
		return _visibleRows;
	}
	
	public int getRowHeight() {
		return _rowHeight;
	}
	
	
}







