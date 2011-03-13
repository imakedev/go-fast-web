<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Map</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
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

.topic {
	padding: 5px 5px 0px 5px;
	font-size: 14px;
	font-family: Tahoma, sans-serif;
	color: #005DB0;
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

.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
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
	function goBack() {
		//	alert("goPage")
		history.back();
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/promotion?page=" + _page;
	}
</script>
<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)" />
</head>
<body>

<center><img
	src="http://maps.google.com/maps/api/staticmap?center=13.777901,100.606956&zoom=16&size=400x400&markers=color:blue|label:G|13.777901,100.606956&sensor=false"
	width=95%></img></center>


<table border="0" width="100%">
	<tr valign="top">
		<td align=center>
		<button class="rounded" style="width: 130px" onclick=
	goBack();
><span>Back</span></button>
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
