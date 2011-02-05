<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Map</title>
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
<td align="center"> <img 
	src="http://maps.google.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=12&size=400x400&sensor=false"></img>
</td>

<table border="1" width="100%">
<tr valign="top">
<td align="center"><input type="button" value=" Back "
	onclick="goPage('itemdetail')"></input></td>
</tr>
</table>
</body>
</html>
