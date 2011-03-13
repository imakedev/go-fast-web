
<%@page import = "java.io.File"%>
<%@page import = "java.io.InputStream"%>
<%@page import = "java.net.URL"%>
<%@page import = "javax.xml.parsers.DocumentBuilder"%>
<%@page import = "javax.xml.parsers.DocumentBuilderFactory"%>
<%@page import = "org.w3c.dom.Document"%>
<%@page import = "org.w3c.dom.Element"%>
<%@page import = "org.w3c.dom.Node"%>
<%@page import = "org.w3c.dom.NodeList"%>

<%@ page contentType="text/html; charset=TIS-620" %>
<html>
<body>
<%


try {
	
	String lat = request.getParameter("lat");
	String lon = request.getParameter("lon");
	
	System.out.println("Get Location from");
	System.out.println("Lat :"+lat);
	System.out.println("Lon :"+lon);
	
	URL u = new URL("http://maps.google.com/maps/geo?q="+lat+","+lon+"&output=xml");
	InputStream is = null;
	is = u.openStream();
	 
	//File file = new File("geo.xml");
	DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	DocumentBuilder db = dbf.newDocumentBuilder();
	Document doc = db.parse(is);
	doc.getDocumentElement().normalize();
	//System.out.println("Root element " + doc.getDocumentElement().getNodeName());
	NodeList nodeLst = doc.getElementsByTagName("kml");
	//System.out.println("Information of all employees");

	for (int s = 0; s < nodeLst.getLength(); s++) {

		Node fstNode = nodeLst.item(s);

		if (fstNode.getNodeType() == Node.ELEMENT_NODE) {

			Element fstElmnt = (Element) fstNode;
			NodeList fstNmElmntLst = fstElmnt
					.getElementsByTagName("SubAdministrativeAreaName");
			Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
			NodeList fstNm = fstNmElmnt.getChildNodes();
			
			//Output result
			out.print(((Node) fstNm.item(0)).getNodeValue());
			/*
			NodeList lstNmElmntLst = fstElmnt
					.getElementsByTagName("name");
			Element lstNmElmnt = (Element) lstNmElmntLst.item(0);
			NodeList lstNm = lstNmElmnt.getChildNodes();
			*/
			//System.out.println("name : " + ((Node) lstNm.item(0)).getNodeValue());
		}

	}
} catch (Exception e) {
	e.printStackTrace();
}

%>
</body>
</html>