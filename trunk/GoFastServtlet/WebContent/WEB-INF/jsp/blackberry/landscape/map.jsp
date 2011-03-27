<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Map</title>
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/corner/justcorners.js"></script>
<script type="text/javascript" src="js/corner/corner.js"></script>
<style>
body {	color:#000000;	text-align:left;margin:0;font-family:Tahoma, sans-serif; font-size:12px;	}
/* Paragraph and headings */
span {  padding:0px 5px 5px 5px;font-family:Tahoma, sans-serif; color:#000000;font-size:12px;}
.topic { padding:5px 5px 0px 5px;font-size:14px;font-family:Tahoma, sans-serif;color:#005DB0; font-weight:bold;}
.more,.more a:link ,.more a:visited ,.more a:active { 
font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:underline;font-weight:bold;}
.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

img{padding:5px;}
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
.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
	background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#777777;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.myButton:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
	background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
	background-color:#dfdfdf;
}.myButton:active {
	position:relative;
	top:1px;
}
</style>
<script>
	var _path='<%=request.getContextPath()%>';
	function goBack() {
		//	alert("goPage")
		//window.location.href = _path+"/listitems";
		window.location.href = _path+"/promotion?page=itemdetail&brand=bb&direction=1";
	}
	function goPage(_page) {
		//alert("goPage")
	 
	}
</script> 
</head> 
<body bgcolor="#ffffff">
<table border="0" width="100%" cellspacing="0" cellpadding="0" align="center" style="border: #003399 1px solid; background-color: #ffffff;">	
<tr valign="top">
	<td align="left">&nbsp;&nbsp;<button class="rounded"  onclick="goBack()" ><span>Back</span></button></td>
</tr>
<tr valign="top">
<td align="center"> <img  
	src="http://maps.google.com/maps/api/staticmap?markers=color:blue|label:O|13.777901,100.606956&sensor=false&markers=color:red|label:D|13.778234,100.579319&zoom=12&size=460x200&sensor=false"></img>
</td>
</tr>
</table>
<table border="0" width="100%" bgcolor="#C0C0C0" cellspacing="0" cellpadding="0" style="border: #003399 1px solid;" align="center"> 
			<tr bgcolor=#C0C0C0>
			<td width=100%  height="30"  bgcolor="#C0C0C0">
			<span class=more>Term of use</span> |<span class=more>
Help</span> |<span class=more> Contact Us</span> <br/>
        <span class=copyright>copyright 2011</span></td>
		</tr>
 
</table>
</body>
</html>
