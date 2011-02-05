<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Promotion</title>
<script>
	function goPage(_page) {
		//alert("goPage")
		window.location.href = "http://localhost:8080/GoFastServtlet/listitems?page="
				+ _page;
	}
</script>
</head>
<body>
<table border="1" width="100%">
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app1.gif"></img></td>
		<td>
		<p>รายการ1</p>
		<br />
		รายละเอียด1
		</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount1.gif"></img></td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app2.gif">
		<td>
		Hello World [Chatchai]
		</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount2.jpg"></img></td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app3.gif">
		<td>Hello World [Chatchai]</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount3.jpg"></img></td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app4.gif">
		<td>Hello World [Chatchai]</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount4.png"></img></td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app5.gif">
		<td>Hello World [Chatchai]</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount5.jpg"></img></td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="75"><img
			src="<%=request.getContextPath()%>/image/app6.gif">
		<td>Hello World [Chatchai]</td>
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/20_percent_discount6.jpg"></img></td>
	</tr>
	<tr valign="top">
		<td colspan="3" align="right">More...</td>
	</tr>
</table>
</body>
</html>