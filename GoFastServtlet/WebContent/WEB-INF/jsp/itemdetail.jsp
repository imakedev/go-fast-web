<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Item Detail</title>
<script>
	function goBack() {
	//	alert("goPage")
		window.location.href = "http://localhost:8080/GoFastServtlet/listitems"; 
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = "http://localhost:8080/GoFastServtlet/listitems?page="
				+ _page;
	}
</script>
</head>
<body>
<table border="1" width="100%">
<tr valign="top">
<td width="150">
<table>
	<tr>
		<td><img width="150" height="150"
	src="<%=request.getContextPath()%>/image/ccooTAG.jpg"></img>
		</td>
	</tr>
	<tr>
		<td align="center">
		<input type="button" value=" Map " onclick="goPage('map')"></input>
		</td>
	</tr>
</table>
	</td>
<td>
<table>
	<tr>
		<td align="center">Header 1
		</td>
	</tr>
	<tr>
		<td>
		 Description xxxxx
		</td>
	</tr>
</table>
</td> 
<td width="75" height="75" ><img  width="75" height="75" src="<%=request.getContextPath()%>/image/10_percent_discount1.gif"></img></td>
<%--
10_percent_discount2.jpg
10_percent_discount3.jpg
10_percent_discount4.png
10_percent_discount5.jpg
20_percent_discount6.jpg
 --%>
 </tr>
</table>
<table border="1" width="100%">
<tr valign="top">
<td width="75" align="center"><img
	src="<%=request.getContextPath()%>/image/app1.gif"></img></td>

<td width="75" align="center"><img
	src="<%=request.getContextPath()%>/image/app2.gif"></img></td>

<td width="75" align="center"><img
	src="<%=request.getContextPath()%>/image/app3.gif"></img></td>

</tr>
</table>
<table border="1" width="100%">
<tr valign="top">
<td align="center"><input type="button" value=" Back " onclick="goBack()"></input></td>
</tr>
</table>
</body>
</html>
