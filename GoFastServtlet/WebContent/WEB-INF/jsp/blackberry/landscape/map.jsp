<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Map</title>
<style>
body {	color:#000000;	text-align:left;margin:0;font-family:Tahoma, sans-serif; font-size:12px;	}
/* Paragraph and headings */
span {  padding:0px 5px 5px 5px;font-family:Tahoma, sans-serif; color:#000000;font-size:12px;}
.topic { padding:5px 5px 0px 5px;font-size:14px;font-family:Tahoma, sans-serif;color:#005DB0; font-weight:bold;}
.more,.more a:link ,.more a:visited ,.more a:active { 
font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:underline;font-weight:bold;}

img{padding:5px;}

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
<body>
<table border="0" width="100%">
<tr valign="top">
<td align="center"> <img 
	src="http://maps.google.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=12&size=480x200&sensor=false"></img>
</td>
</tr>
</table>
<table border="0" width="100%">
	<tr valign="top">
		<td align="center">
		<table width="100%" border="1" cellspacing="0" cellpadding="0"
			align=center
			style="border: #ffffff 0px solid; background-color: #F3F8FF;">
			<tbody>
				<tr>
				<!-- 
				<a  onclick="goBack()" href="#" class="myButton">Back</a>
					<td bgcolor=#C0C0C0 align="center" height=50 width=100% class=button
						><a onclick="goBack()">กลับ</a></td>
						 -->
						 <td  align="center"><a  onclick="goBack()" href="#" class="myButton">Back</a></td>
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
 
</table>
</body>
</html>