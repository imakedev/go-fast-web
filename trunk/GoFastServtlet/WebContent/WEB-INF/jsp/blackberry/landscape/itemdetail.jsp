<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Item Detail</title>
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/corner/justcorners.js"></script>
<script type="text/javascript" src="js/corner/corner.js"></script>
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

.topic { padding:5px 5px 0px 5px;font-size:18px;font-family:Tahoma,
sans-serif;color:#005DB0; font-weight:bold;}
.detail { padding:5px 5px 0px 5px;font-size:13px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}
.detail2 { padding:5px 5px 0px 5px;font-size:16px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}
.detail3 { padding:5px 5px 0px 5px;font-size:12px;font-family:Tahoma,
sans-serif;color:#747170;}

.more,.more a:link ,.more a:visited ,.more a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#151b54;
line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px;
color:#06A800; line-height:14px;}

.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

 
.copyright,.copyright a:link ,.copyright a:visited ,.copyright a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#585858;
line-height:14px; text-decoration:none;font-weight:bold;}

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

	<link rel="stylesheet" href="css/iphone_img_style.css" type="text/css" media="screen" charset="utf-8"/>
	<script src="js/jquery-1.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<!-- 
	<script src="js/iphone_slider.js" type="text/javascript" charset="utf-8"></script>
	 --> 
</head>

<body >
<table border="0" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr valign="top">
		<td width="100%">
		<table>
		
		<tr>
			<td align="left">  <button class="rounded"  onclick="goPage('items&brand=bb&direction=1')" ><span>Back</span></button> </td>
				<td colspan=3 align=center><span class="topic">นางกวัก ร้านอาหาร</span></td>
			<td align="right"> <button class="rounded"  onclick="goPage('map&brand=bb&direction=1')" ><span>Map</span></button></td>
			</tr>
			<tr>
				<td rowspan=2><img
			src="<%=request.getContextPath()%>/image/app1.jpg" width="200" height="140"></img>
				</td>
				<td colspan=3 align=center><span class="topic"></span></td>
			</tr>
			<tr>
				<td width=80%  colspan=3 valign=top><span class="detail3"> คลองตันเหนือ วัฒนา กรุงเทพฯ <br/>027147938,<br/></span>
				<span class="detail2"> ส่วนลด 10 %</span>
				<span class="">เพียงนำคูปองไปแสดงที่ร้าน พิเศษสุดๆ เมื่อทานอาหารครบ 2,000 บาท รับฟรีพิซซ่า 1 ถาด (ราคา 330 บาท)</span>
				</td>
			</tr>
			<%-- 	
			<tr>
				<td colspan=2 align=left><span class="detail2"> ส่วนลด 10 %</span></td>
			</tr>
			
			<tr>
				<td colspan=2><span class="">เพียงนำคูปองไปแสดงที่ร้าน พิเศษสุดๆ เมื่อทานอาหารครบ 2,000 บาท รับฟรีพิซซ่า 1 ถาด (ราคา 330 บาท)</span></td>
			</tr>
 --%>
		</table>
		</td>
		<td></td>
	</tr>
</table>
 






<table border="0" width="100%">
	<tbody>
		<tr valign="top">
			<td align="center" colspan="3">

			<table width="100%" border="1" cellspacing="0" cellpadding="0" align=center
		style="border: #ffffff 0px solid; background-color: #F3F8FF;">
				<tbody align="center">
					<tr align="center"> 
<td colspan=3 align=center>
<a href="/GoFastServtlet/promotion?page=view_image_left&brand=bb&direction=1"><img border=0 src=/GoFastServtlet/image/app1.jpg width=100 height="35"/> </a>
<a href="/GoFastServtlet/promotion?page=view_image&brand=bb&direction=1"><img border=0 src=/GoFastServtlet/image/app2.jpg width=100 height="35"/></a>
<img src=/GoFastServtlet/image/app3.jpg width=100 height="35"/>
</td>
</tr>
<tr>
<td  align=left><a href="/GoFastServtlet/promotion?page=view_image&brand=bb&direction=1"><img border=0 src=/GoFastServtlet/image/leftarrow.png /></a> </td>
<td align=center><img src=/GoFastServtlet/image/app3.jpg  width=250 height=110/></td>
<td  align=right></td>
</tr> 

				</tbody>
			</table>
			</td>
		</tr>
		<tr bgcolor=#C0C0C0>
			<td width=100% colspan=3 height=30>
			<span class=more>Term of use</span> |<span class=more>
Help</span> |<span class=more> Contact Us</span> <br/>
        <span class=copyright>copyright 2011</span></td>
		</tr>

	</tbody>
</table>


</body>
</html>
