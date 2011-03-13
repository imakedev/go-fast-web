<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Item Detail</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
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

.topic {
	padding: 5px 5px 0px 5px;
	font-size: 18px;
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
		history.back()
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/promotion?page=" + _page;
	} 
</script>

<link rel="stylesheet" href="css/iphone_img_style.css" type="text/css"
	media="screen" charset="utf-8"><script
	src="js/jquery-1.3.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/iphone_slider.js" type="text/javascript" charset="utf-8"></script>

<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)" />
</head>

<body>
<table border="0" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr valign="top">
		<td width="150">
		<table>
			<tr>
				<td rowspan=2><img
					src="<%=request.getContextPath()%>/image/app1.jpg"></img></td>
				<td colspan=3 align=center><span class="topic">นางกวัก
				ร้านอาหาร</span></td>
			</tr>
			<tr>
				<td width=80% valign=top><span class="detail3">
				คลองตันเหนือ วัฒนา กรุงเทพฯ <br />
				027147938,</span></td>
			</tr>

			<tr>
				<td colspan=2 align=left><span class="detail2"> ส่วนลด
				10 %</span></td>
			</tr>

			<tr>
				<td colspan=2><span class="">เพียงนำคูปองไปแสดงที่ร้าน
				พิเศษสุดๆ เมื่อทานอาหารครบ 2,000 บาท รับฟรีพิซซ่า 1 ถาด (ราคา 330
				บาท)</span></td>
			</tr>

		</table>
		</td>
		<td></td>
	</tr>
</table>

<table border="0" width="100%">
	<tr>
		<td>
		<div id="wrapper">
		<div id="slider"><img class="scrollButtons left"
			src="image/leftarrow.png">

		<div style="overflow: hidden;" class="scroll">

		<div class="scrollContainer">

		<div class="panel" id="panel_1">
		<div class="inside"><img src="image/app1.jpg" alt="picture" />
		<h2></h2>
		<p></p>
		</div>
		</div>

		<div class="panel" id="panel_2">
		<div class="inside"><img src="image/app2.jpg" alt="picture" />
		<h2></h2>
		<p></p>
		</div>
		</div>

		<div class="panel" id="panel_3">
		<div class="inside"><img src="image/app3.jpg" alt="picture" />
		<h2></h2>
		<p></p>
		</div>
		</div>

		<div class="panel" id="panel_4">
		<div class="inside"><img src="image/app3.jpg" alt="picture" />
		<h2></h2>
		<p></p>
		</div>
		</div>

		<div class="panel" id="panel_5">
		<div class="inside"><img src="image/app3.jpg" alt="picture" />
		<h2></h2>
		<p></p>
		</div>
		</div>



		</div>

		<div id="left-shadow"></div>
		<div id="right-shadow"></div>

		</div>

		<img class="scrollButtons right" src="image/rightarrow.png"></div>

		</div>
		</td>
	</tr>
</table>






<table border="0" width="100%">
	<tbody>
		<tr valign="top">
			<td align="center">

			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				align=center
				style="border: #ffffff 0px solid;">
				<tbody>
					<tr>
					<!--  
						<td bgcolor=#C0C0C0 align="center" height=50 width=50% class=button onclick="goBack()"><a href="#">กลับ</a></td> 
						<td bgcolor=#C0C0C0 align=center height=50 width=50% class=button onclick= goPage('map'); ><a href="#">แผนที่</a></td> 
						-->
						<td align=center> <button class="rounded" style="width:130px" onclick="goBack()"><span>Back</span></button> </td>
						<td align=center> <button class="rounded" style="width:130px"  onclick="goPage('map')"><span>Map</span></button> </td>
					</tr>

				</tbody>
			</table>
			</td>
		</tr>
		<tr bgcolor=#C0C0C0>
			<td width=100% colspan=3 height=30><span class=more>Term
			of use</span> |<span class=more> Help</span> |<span class=more>
			Contact Us</span> <br />
			<span class=copyright>copyright 2011</span></td>
		</tr>

	</tbody>
</table>


</body>
</html>
