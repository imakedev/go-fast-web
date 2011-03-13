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
	var _path='<%=request.getContextPath()%>
	h)
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

<link rel="stylesheet" href="css/iphone_img_style.css" type="text/css"
	media="screen" charset="utf-8">
<script src="js/jquery-1.3.1.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/iphone_slider.js" type="text/javascript" charset="utf-8"></script>

<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)" />

<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/corner/justcorners.js"></script>
<script type="text/javascript" src="js/corner/corner.js"></script>
</head>

<body>

<table border=0 width=100%
height=50
	style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr>
		<td align=center  width=60% class=header-topic>Setting</td>
	</tr>
</table>


<table border=0 width=100%>
	<tr>
		<td align=center colspan=2>


		<table border=0 align=center>
			<!-- Menu 1 -->
			<tr>
				<td align=center colspan=2><span id="menu1"
					onClick="showhide(menu1distance)">
				<button class="rounded" style="width: 180px" onclick=goBack();><span>Distrance</span></button>
				</span></td>
			</tr>
			<tr>
				<td width=50px></td>
				<td align=center id="menu1distance" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>< 5 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>5-10 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>10-20 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>20 > Km.</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr>
			
			
			<!-- Menu 2 -->
			<tr>
				<td align=center colspan=2><span id="menu2"
					onClick="showhide(menu2area)" >
				<button class="rounded" style="width: 180px" onclick=goBack();><span>Area</span></button>
				</span></td>
			</tr>
			<tr>
				<td width=50px></td>
				<td align=center id="menu2area" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Sukumvit</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Thonglor</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Latprao</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Jatujak</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr>
		</table>
		
			<!-- Menu 3 -->
			<tr>
				<td align=center colspan=2><span id="menu3"
					onClick="showhide(menu3discount)" >
				<button class="rounded" style="width: 180px" onclick=goBack();><span>Discount</span></button>
				</span></td>
			</tr>
			<tr>
				<td width=50px></td>
				<td align=center id="menu3discount" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>> 30%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>20-30%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>10-20%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>< 10%</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr>
			
			
			
			
		</table>


		</td>
	</tr>
</table>




<table border="0" width="100%">
	<tbody>
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
