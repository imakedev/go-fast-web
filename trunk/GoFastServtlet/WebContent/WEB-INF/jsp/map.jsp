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

a.button {
/* Sliding right image */

background: transparent url('<%=request.getContextPath()%>/image/button_right.png') no-repeat scroll top right; 
display: block;
float: left;
height: 35px; /* CHANGE THIS VALUE ACCORDING TO IMAGE HEIGHT */
margin-right: 6px;
padding-right: 20px; /* CHENGE THIS VALUE ACCORDING TO RIGHT IMAGE WIDTH */
/* FONT PROPERTIES */
text-decoration: none;
color: #000000;
font-family: Arial, Helvetica, sans-serif;
font-size:12px;
font-weight:bold;
}
a.button span {
/* Background left image */ 
background: transparent url('<%=request.getContextPath()%>/image/button_left.png') no-repeat; 
display: block;
line-height: 22px; /* CHANGE THIS VALUE ACCORDING TO BUTTONG HEIGHT */
padding: 7px 0 5px 18px;
} 
a.button:hover span{
text-decoration:underline;
}

</style>
<script>
	var _path='<%=request.getContextPath()%>';
	function goBack() {
		//	alert("goPage")
		window.location.href = _path+"/listitems";
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path+"/listitems?page="
				+ _page;
	}
</script>
</head> 
<body>
<table border="0" width="100%">
<tr valign="top">
<td align="center"> <img 
	src="http://maps.google.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=12&size=400x400&sensor=false"></img>
</td>
</tr>
</table>
<table border="0" width="100%">
<tr valign="top">
<td align="center">
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><a class="button"  onclick="goPage('itemdetail')"><span>Back</span></a></td>
  </tr>
</table>
</td>
</tr>
</table>
</body>
</html>
