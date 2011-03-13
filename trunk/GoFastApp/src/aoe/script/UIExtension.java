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

import org.w3c.dom.Document;

import net.rim.device.api.browser.field2.BrowserField;
import net.rim.device.api.script.ScriptEngine;
import net.rim.device.api.web.WidgetConfig;
import net.rim.device.api.web.WidgetExtension;

public final class UIExtension implements WidgetExtension {

	public String[] getFeatureList() {
		String[] result = new String[1];
		result[0] = "sample.ui";
		return result;
	}

	public void loadFeature(String feature, String version, Document doc,
			ScriptEngine scriptEngine) throws Exception {

		if (feature == "sample.ui") {
			scriptEngine.addExtension("sample.ui.spinner", new SpinnerSample());
		}

	}

	public void register(WidgetConfig arg0, BrowserField arg1) {
		// TODO Auto-generated method stub
	}

	public void unloadFeatures(Document arg0) {
		// TODO Auto-generated method stub
	}
}



