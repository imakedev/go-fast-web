<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Promotion</title>
<script>
	var _path='<%=request.getContextPath()%>';
	//alert(_path)
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path+"/listitems?page="
				+ _page;
	}
</script>
</head>
<style>
body {	color:#000000;	text-align:left;margin:0;font-family:Tahoma, sans-serif; font-size:12px;	}
/* Paragraph and headings */
span {  padding:0px 5px 5px 5px;font-family:Tahoma, sans-serif; color:#000000;font-size:12px;}
.topic { padding:5px 5px 0px 5px;font-size:14px;font-family:Tahoma, sans-serif;color:#005DB0; font-weight:bold;}
.more,.more a:link ,.more a:visited ,.more a:active { 
font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px; color:#06A800; line-height:14px; text-decoration:underline;font-weight:bold;}

img{padding:5px;}

</style>
<body>
<table border="0" width="100%" cellspacing="2" cellpadding="0" style=" border:#003399 1px solid; background-color:#F3F8FF;">	
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center" ><img
			src="<%=request.getContextPath()%>/image/app1.gif" ></img></td>
		<td align="left"  >
		<span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span>
	  </td>
		<td width="55" height="55" align="center"><img src="<%=request.getContextPath()%>/image/10_percent_discount1.gif"  width="50" height="50" ></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center"><img
			src="<%=request.getContextPath()%>/image/app2.gif" >
		<td align="left">
		<span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span>	</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount2.jpg"></img></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center"><img
			src="<%=request.getContextPath()%>/image/app3.gif" >
		<td align="left"><span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span></td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount3.jpg"></img></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center"><img
			src="<%=request.getContextPath()%>/image/app4.gif" >
		<td align="left"><span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span></td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount4.png"></img></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center"><img
			src="<%=request.getContextPath()%>/image/app5.gif" >
		<td align="left"><span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span></td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount5.jpg"></img></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75" align="center"><img
			src="<%=request.getContextPath()%>/image/app6.gif" >
		<td align="left"><span class="topic">Header 1</span>	
		<br>		
		<span class="detail"> Description xxxxx</span></td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/20_percent_discount6.jpg"></img></td>
	</tr>
	<tr><td   colspan="3"><hr style=" color:#000099;width:98%; "></td></tr>
	<tr valign="top">
		<td height="25" colspan="3" align="right"><span class="more">More...</span></td>
	</tr>
</table>
</body>
</html>