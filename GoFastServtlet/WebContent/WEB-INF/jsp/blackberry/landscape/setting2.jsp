<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Setting</title>  
<link href="<%=request.getContextPath()%>/css/sddm.css"
	rel="stylesheet" type="text/css" />
<style>
body {
	color: #000000;
	text-align: left;
	margin: 0;
	font-family: Tahoma, sans-serif;
	font-size: 12px;
}

/* Paragraph and headings */
span {
	padding: 0px 5px 5px 5px;
	font-family: Tahoma, sans-serif;
	color: #000000;
	font-size: 12px;
}

.topic {
	padding: 5px 5px 0px 5px;
	font-size: 18px;
	font-family: Tahoma, sans-serif;
	color: #005DB0;
	font-weight: bold;
}

.header-topic {
	padding: 5px 5px 0px 5px;
	font-size: 16px;
	font-family: Tahoma, sans-serif;
	color: #005DB0;
	font-weight: bold;
}

.detail {
	padding: 5px 5px 0px 5px;
	font-size: 13px;
	font-family: Tahoma, sans-serif;
	color: #ff0000;
	font-weight: bold;
}

.detail2 {
	padding: 5px 5px 0px 5px;
	font-size: 16px;
	font-family: Tahoma, sans-serif;
	color: #ff0000;
	font-weight: bold;
}

.detail3 {
	padding: 5px 5px 0px 5px;
	font-size: 12px;
	font-family: Tahoma, sans-serif;
	color: #747170;
}

.more,.more a:link,.more a:visited,.more a:active {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

.more a:hover {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #06A800;
	line-height: 14px;
}

.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

.copyright,.copyright a:link,.copyright a:visited,.copyright a:active {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #585858;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

img {
	padding: 5px;
}

a.button { /* Sliding right image */
	background: transparent
		url('<%=request.getContextPath()%>/image/button_right.png') no-repeat
		scroll top right;
	display: block;
	float: left;
	height: 35px; /* CHANGE THIS VALUE ACCORDING TO IMAGE HEIGHT */
	margin-right: 6px;
	padding-right: 20px;
	/* CHENGE THIS VALUE ACCORDING TO RIGHT IMAGE WIDTH */
	/* FONT PROPERTIES */
	text-decoration: none;
	color: #000000;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
}

a.button span { /* Background left image */
	background: transparent
		url('<%=request.getContextPath()%>/image/button_left.png') no-repeat;
	display: block;
	line-height: 22px; /* CHANGE THIS VALUE ACCORDING TO BUTTONG HEIGHT */
	padding: 7px 0 5px 18px;
}

a.button:hover span {
	text-decoration: underline;
}
 
</style>
<script>
	var _path='<%=request.getContextPath()%>';
	//alert(_path)
	function goBack() {
		//	alert("goPage")
		window.location.href = _path + "/promotion";
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/promotion?page=" + _page;
	}
</script>
<script language="javascript">
	var Open = "";
	var Closed = "";


	function showhide(what) {
		if (what.style.display == 'none') {
			what.style.display = '';
			//what2.src = Open.src;
		} else {
			what.style.display = 'none';
			//what2.src = Closed.src;
		}
	}
	
</script>
 
<script type="text/javascript">
function distPlayComponent(comID) {
		var distplayComponent = document.getElementById("distplayComponent");
		var str = "";
		//var distanceStr
		 
		if (comID == 'Distance') {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			 <button class=\"rounded\" style=\"width: 180px\" ><span>&lt; 1 km</span></button> "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<button class=\"rounded\" style=\"width: 180px\" ><span>1-2 km</span></button> "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<button class=\"rounded\" style=\"width: 180px\" ><span>2-5 km</span></button> "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<button class=\"rounded\" style=\"width: 180px\" ><span>&gt; 5 km</span></button> "
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Discount") { 
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "	<button class=\"rounded\" style=\"width: 180px\" onclick=goBack();><span>&gt; 30%</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "	<button class=\"rounded\" style=\"width: 180px\" onclick=goBack();><span>20-30%</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "	<button class=\"rounded\" style=\"width: 180px\" onclick=goBack();><span>10-20%</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "	<button class=\"rounded\" style=\"width: 180px\" onclick=goBack();><span>&lt; 10%</span></button>"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Location") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> บางเขน"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> จตุจักร "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> ลาดพร้าว"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Area") { 
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+"  <button class=\"rounded\" style=\"width: 180px\"><span>Sukumvit</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span>Thonglor</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span>Jatujak</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
			 		+" <button class=\"rounded\" style=\"width: 180px\"><span>Latprao</span></button>"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Price/Unit") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span>&lt; 100 Baht.</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span>200 - 500 Baht.</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span> 200 - 500 Baht.</span></button>"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+" <button class=\"rounded\" style=\"width: 180px\"><span>&lt; 500 Baht.</span></button>"
					+ "		</td>" + "	</tr>" + "</table>";
		}
		distplayComponent.innerHTML = str;

	}
</script>
</head>
 
<body>

<table border="0" width="100%" style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr>
		<td align="center"  width="100%" class="header-topic" >Setting</td>
	</tr>
	<tr valign="top">  
		<td align="center" width="100%">
		<div class="navbar"> 
<div class="mainDiv" >
<div class="topItem" align="left">Demo Menu 1</div>        
<div class="dropMenu" ><!-- -->
	<div class="subMenu" style="display:inline;">
		<div class="subItem" align="left"><a href="#">Configuration</a></div>
	        <div class="subItem"  align="left"><a href="#">Tool Box</a></div>
		<div class="subItem"  align="left"><a href="#">Contact Us</a></div>
		<div class="subItem" align="left"><a href="#">Sub Menu 4</a></div>
		<div class="subItem" align="left"><a href="#">Sub Menu 5</a></div>
	</div>
</div>
</div> 
<br/> 
<!-- 
<div class="mainDiv" >
<div class="topItem"  >Demo Menu 2</div>        
<div class="dropMenu" > 
	<div class="subMenu" style="display:none;">
		<div class="subItem"><a href="#">Configuration</a></div>
		<div class="subItem"><a href="#">Sub Menu 2</a></div>
		<div class="subItem"><a href="#">Sub Menu 3</a></div>
		<div class="subItem"><a href="#">Sub Menu 4</a></div>
        </div>
</div>
</div>
 -->
</div>
		</td> 
	</tr>
</table>
<script type="text/javascript" src="js/xpmenuv21.js"></script> 
<%--
<table border="0" width="100%"> 
			
</table>
 --%> 
<%--
<table border="0" width="100%"> 
		<tr valign="top">
			<td align="left">
				Term	of use  |  Help  |  Contact Us Copyright 2011
			</td>
		</tr> 
</table>
 --%>
</body>
</html>
