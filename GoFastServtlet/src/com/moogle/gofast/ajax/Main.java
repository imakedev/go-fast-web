/**
 * Copyright 2005-2008 Noelios Technologies.
 * 
 * The contents of this file are subject to the terms of the following open
 * source licenses: LGPL 3.0 or LGPL 2.1 or CDDL 1.0 (the "Licenses"). You can
 * select the license that you prefer but you may not use this file except in
 * compliance with one of these Licenses.
 * 
 * You can obtain a copy of the LGPL 3.0 license at
 * http://www.gnu.org/licenses/lgpl-3.0.html
 * 
 * You can obtain a copy of the LGPL 2.1 license at
 * http://www.gnu.org/licenses/lgpl-2.1.html
 * 
 * You can obtain a copy of the CDDL 1.0 license at
 * http://www.sun.com/cddl/cddl.html
 * 
 * See the Licenses for the specific language governing permissions and
 * limitations under the Licenses.
 * 
 * Alternatively, you can obtain a royaltee free commercial license with less
 * limitations, transferable or non-transferable, directly at
 * http://www.noelios.com/products/restlet-engine
 * 
 * Restlet is a registered trademark of Noelios Technologies.
 */

package com.moogle.gofast.ajax;
 
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.moogle.gofast.hibernate.GoFastService;
import com.moogle.gofast.utils.Paging;

/**
 * Simple demo application that can be run either as a standalone application
 * (http://localhost:3000/v1/) or inside a servlet container
 * (http://localhost:8080/v1/).
 * 
 * @author Chatchai Pimtun (Admin)
 */
public class Main {

//    public static void main(String... args) throws Exception {
	public static void main(String[] args) throws Exception {
        // Load the Spring application context
        final ApplicationContext springContext = new ClassPathXmlApplicationContext(
                new String[] { 
                		 "hibernate-config.xml"
                		});

        // Obtain the Restlet component from the Spring context and start it
      //  springContext.getBean("top");
        GoFastService  goFastService= (GoFastService)springContext.getBean("goFastService");
        System.out.println(goFastService.listCatalogues(new Paging()));
	//	testXStream();
    }
	 
}
